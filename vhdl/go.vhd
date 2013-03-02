library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library unisim;
use unisim.vcomponents.all;

library work;
use work.all;
use work.defs.all;

entity go is
  port(adc_p : in unsigned7;
       adc_n : in unsigned7;
       adc_clk_p : out std_logic;
       adc_clk_n : out std_logic;
       adc_reclk_p : in std_logic;
       adc_reclk_n : in std_logic;

       adc_sen   : out std_logic := '0';
       adc_sdata : out std_logic := '0';
       adc_sclk  : out std_logic := '0';
       adc_reset : out std_logic := '1';

       audio_scki, audio_lrck, audio_data, audio_bck : out std_logic;
       audio_pd_inv, audio_demp : out std_logic;

       usb_d : inout unsigned8;
       usb_c : inout unsigned8;

       flash_cs_inv, flash_sclk, flash_si : out std_logic;
       flash_so : in std_logic;

       cpu_ssirx : out std_logic;
       cpu_ssitx : in std_logic;
       cpu_ssiclk : inout std_logic;
       cpu_ssifss : inout std_logic;

       spartan_m0 : in std_logic;
       spartan_m1 : in std_logic;

       led : out unsigned8;

       clkin125 : in std_logic;
       clkin125_en : out std_logic);
end go;

architecture behavioural of go is
  signal qq : four_signed36;
  signal ii : four_signed36;

  signal qq_buf : signed36;
  signal ii_buf : signed36;
  signal ii_buf_last, qq_buf_last : std_logic;

  signal packet : unsigned(31 downto 0);

  -- Generated clock for delivery to ADC.
  signal adc_clk : std_logic;
  signal adc_clk_neg : std_logic;
  signal adc_clk_250 : std_logic;
  signal adc_clk_neg_250 : std_logic;
  signal adc_clk_200 : std_logic;
  signal adc_clk_neg_200 : std_logic;
  signal adc_clk_fb : std_logic;

  -- Received clk from ADC.
  signal adc_reclk_b : std_logic;
  signal adc_reclk : std_logic;

  signal adc_reclk_diff : std_logic;

  -- Regenerated reclk.
  signal clk_main : std_logic;
  signal clk_main_neg : std_logic;
  signal clku_main : std_logic;
  signal clku_main_neg : std_logic;
  signal clk_main_fb : std_logic;

  signal clkin125_b : std_logic;
  signal clk_50m : std_logic;
  signal clku_50m : std_logic;

  signal adc_ddr : unsigned7;
  signal adc_data, adc_data_c, adc_data_b : signed14;
  attribute keep of adc_data_c : signal is "true";

  signal phase : unsigned18;
  signal phase_strobe, phase_last : std_logic;

  signal ir_data : signed18;
  signal ir_strobe : std_logic;
  signal ir_last : std_logic;

  signal usb_xmit, usb_last : std_logic;
  signal usb_xmit_length : integer range 0 to 5;
  signal usb_xmit_overrun : std_logic;
  signal usb_nRXFb, usb_nTXEb : std_logic := '1';
  signal usb_nRXF, usb_nTXE : std_logic := '1';
  signal xmit_SIWU : std_logic;
  attribute keep of usb_nRXFb, usb_nTXEb : signal is "true";

  signal low_data : signed32;
  signal low_strobe : std_logic;
  signal low_last : std_logic;

  signal out_data : signed32;
  signal out_last : std_logic;

  -- The configuration loaded from USB.
  signal config : unsigned(207 downto 0);
  alias adc_control : unsigned8 is config(135 downto 128);
  alias adc_clock_select : std_logic is adc_control(7);
  -- Control for data in to USB host.
  alias xmit_control : unsigned8 is config(143 downto 136);

  -- Channel to select from time-multiplexed data.
  alias xmit_channel : unsigned2 is xmit_control(1 downto 0);
  -- Data source.
  alias xmit_source : unsigned3 is xmit_control(4 downto 2);
  -- Strobe SIWU to push data through to host.
  alias xmit_low_latency : std_logic is xmit_control(7);
  -- Ignore the TX handshake and shovel data at 12.5 MB/s.
  alias xmit_turbo : std_logic is xmit_control(6);
  alias flash_control : unsigned8 is config(151 downto 144);

  alias cpu_ssi : unsigned8 is config(199 downto 192);
  signal cpu_ssiclk1, cpu_ssiclk2, cpu_ssitx1, cpu_ssitx2 : std_logic;
  signal cpu_ssifss1, cpu_ssifss2 : std_logic;
  signal cpu_ssifss_stretch : std_logic;
  signal cpu_ssifss_stretch_change : std_logic;

  alias usb_control : unsigned8 is config(207 downto 200);

  alias bandpass_freq : unsigned8 is config(159 downto 152);
  alias bandpass_gain : unsigned8 is config(167 downto 160);

  signal bandpass_strobe : std_logic := '0';
  signal bandpass_r, bandpass_i : signed15;

  alias sampler_rate : unsigned8 is config(175 downto 168);
  alias sampler_decay : unsigned16 is config(191 downto 176);
  signal sampler_data : signed15;
  signal sampler_strobe : std_logic;

  signal burst_data : signed15;
  signal burst_strobe : std_logic;

  signal led_off : unsigned8 := x"fe";

  signal usbd_out : unsigned8;
  signal usb_oe_n : std_logic;

  attribute S : string;
  attribute S of usb_c : signal is "yes";
  attribute S of led : signal is "yes";

  attribute pullup : string;
  attribute pullup of spartan_m0, spartan_m1 : signal is "TRUE";

  alias clk_main_locked : std_logic is led_off(1);
  alias adc_clk_locked : std_logic is led_off(2);

begin
  usb_d <= usbd_out when usb_oe_n = '0' else "ZZZZZZZZ";
  usb_c(7 downto 5) <= "ZZZ";
  usb_c(0) <= 'Z'; -- nRXF.
  usb_c(1) <= 'Z'; -- nTXE.

  -- SIWU can be strobed either by the USBIO unit, or manually.
  usb_c(4) <= xmit_SIWU and not (xmit_low_latency and xmit_turbo);

  clkin125_en <= '1';

  audio_pd_inv <= '1';
  audio_demp <= '0';

  adc_sen   <= adc_control(0);
  adc_sdata <= adc_control(1);
  adc_sclk  <= adc_control(2);
  adc_reset <= adc_control(3);

  flash_si <= flash_control(0);
  flash_cs_inv <= flash_control(1);
  flash_sclk <= flash_control(2);

  led_control: for i in 0 to 7 generate
    led(i) <= '0' when led_off(i) = '0' else 'Z';
  end generate;

  led_off(3) <= not qq_buf_last xor ii_buf_last;

  led_off(5) <= not usb_xmit_overrun or xmit_turbo;

  led_off(6) <= spartan_m0;
  led_off(7) <= not spartan_m1;

  cpu_ssiclk <= 'Z' when cpu_ssi(7) = '1' else cpu_ssi(2);
  cpu_ssifss <= 'Z' when cpu_ssi(7) = '1' else cpu_ssi(1);
  cpu_ssirx <= cpu_ssi(0);

  blinky : entity blinkoflow port map(adc_data_b, led_off(4), open, clk_main);

  down: for i in 0 to 3 generate
    downblock: block
      signal freq : unsigned24;
      signal gain : unsigned8;
    begin
      freq <= config(i * 32 + 23 downto i * 32);
      gain <= config(i * 32 + 31 downto i * 32 + 24);
      down0: entity downconvert
        port map (data => adc_data_b, freq => freq, gain => gain,
                  clk => clk_main,
                  qq => qq(i), ii => ii(i));
    end block;
  end generate;

  qfilter: entity multifilter port map(qq, qq_buf, qq_buf_last, clk_main);
  ifilter: entity multifilter port map(ii, ii_buf, ii_buf_last, clk_main);

  ph: entity phasedetect
    port map(qq_buf, ii_buf, qq_buf_last,
             phase, phase_strobe, phase_last, clk_main);

  irf: entity irfir
    generic map (acc_width => 36, out_width => 18)
    port map(phase, phase_last, ir_data, ir_strobe, ir_last, clk_main);

  lf: entity lowfir
    generic map (acc_width => 37, out_width => 32)
    port map(ir_data, ir_last, low_data, low_strobe, low_last, clk_main);

  demph: entity quaddemph generic map (32, 40, 32, 1)
    port map (low_data, low_strobe, low_last,
              out_data, out_last, clk_main);

  au: entity audio generic map (bits_per_sample => 32)
    port map (out_data, out_data, out_last,
              audio_scki, audio_lrck, audio_data, audio_bck, clk_main);

  bp : entity bandpass port map (
    adc_data_b, bandpass_freq, bandpass_gain,
    bandpass_r, bandpass_i, bandpass_strobe, clk_main);

  brst : entity burst port map (
    adc_data_b, flash_control(7), burst_data, burst_strobe, clk_main);

  smplr : entity sampler port map (
    adc_data_b, sampler_decay, sampler_rate, sampler_data, sampler_strobe,
    clk_main);

  process
  begin
    wait until rising_edge(clk_main);
    adc_data_c <= adc_data xor "10" & x"000";
    adc_data_b <= adc_data_c;

    packet <= (others => 'X');
    case xmit_source is
      when "000" =>
        packet(17 downto 0) <= unsigned(ir_data);
        packet(22 downto 18) <= "00000";
        packet(23) <= usb_xmit_overrun;
        usb_xmit <= usb_xmit xor ir_strobe;
        usb_last <= ir_last;
        usb_xmit_length <= 3;
      when "001" =>
        packet(14 downto 0) <= unsigned(sampler_data);
        packet(15) <= usb_xmit_overrun;
        usb_xmit <= usb_xmit xor sampler_strobe;
        usb_last <= '1';
        usb_xmit_length <= 2;
      when "010" =>
        packet(0) <= flash_so;
        packet(6 downto 1) <= "000000";
        packet(7) <= usb_xmit_overrun;
        usb_xmit <= flash_control(3);
        usb_last <= flash_control(3);
        usb_xmit_length <= 1;
      when "011" =>
        packet(14 downto 0) <= phase(14 downto 0);
        packet(15) <= usb_xmit_overrun;
        usb_xmit <= usb_xmit xor phase_strobe;
        usb_last <= phase_last;
        usb_xmit_length <= 2;
      when "100" =>
        packet(14 downto 0) <= unsigned(bandpass_r);
        packet(15) <= usb_xmit_overrun;
        packet(30 downto 16) <= unsigned(bandpass_i);
        packet(31) <= usb_xmit_overrun;
        usb_xmit_length <= 4;
        usb_xmit <= usb_xmit xor bandpass_strobe;
        usb_last <= '1';
      when "101" =>
        packet(14 downto 0) <= unsigned(burst_data);
        packet(15) <= usb_xmit_overrun;
        usb_xmit_length <= 2;
        usb_xmit <= burst_strobe;
      when "110" =>
        packet(0) <= cpu_ssitx2;
        packet(1) <= cpu_ssifss2;
        packet(5 downto 2) <= "0000";
        packet(6) <= cpu_ssifss_stretch;
        packet(7) <= usb_xmit_overrun;
        usb_xmit_length <= 1;
        usb_xmit <= cpu_ssiclk2;
        usb_last <= cpu_ssiclk2;
      when others =>
        usb_xmit_length <= 0;
        usb_last <= '1';
        usb_xmit <= usb_xmit xor ir_strobe;
    end case;

    cpu_ssitx1 <= cpu_ssitx;
    cpu_ssitx2 <= cpu_ssitx1;
    cpu_ssiclk1 <= cpu_ssiclk;
    cpu_ssiclk2 <= cpu_ssiclk1;
    cpu_ssifss1 <= cpu_ssifss;
    cpu_ssifss2 <= cpu_ssifss1;

    if cpu_ssifss1 = '1' then
      cpu_ssifss_stretch <= '1';
      cpu_ssifss_stretch_change <= '0';
    elsif cpu_ssiclk2 /= cpu_ssiclk1 then
      cpu_ssifss_stretch_change <= not cpu_ssifss_stretch_change;
      if cpu_ssifss_stretch_change = '1' then
        cpu_ssifss_stretch <= '0';
      end if;
    end if;
  end process;

  usb: entity usbio
    generic map(
      26, 4,
      x"00" & x"80" & x"0000" & x"ff" & x"0000" & x"0f" & x"0b" & x"09"
      & x"00000000" & x"00000000" & x"00000000" & x"805ed288")
    port map(usbd_in => usb_d, usbd_out => usbd_out, usb_oe_n => usb_oe_n,
             usb_nRXF => usb_nRXF, usb_nTXE => usb_nTXE,
             usb_nRD => usb_c(2),  usb_nWR => usb_c(3),
             usb_SIWU => xmit_SIWU,
             config => config, tx_overrun => usb_xmit_overrun,
             packet => packet,
             xmit => usb_xmit, last => usb_last,
             xmit_channel => xmit_channel, xmit_length => usb_xmit_length,
             low_latency => xmit_low_latency, turbo => xmit_turbo,
             rx_delay => usb_control(5 downto 0),
             clk => clk_50m);

  process
  begin
    wait until rising_edge(clk_main_neg);
    usb_nRXFb <= usb_c(0);
    usb_nTXEb <= usb_c(1);
  end process;

  process
  begin
    wait until falling_edge(clk_50m);
    usb_nRXF <= usb_nRXFb;
    usb_nTXE <= usb_nTXEb;
  end process;

  -- DDR input from ADC.
  adc_input: for i in 0 to 6 generate
    adc_in: ibufds generic map (diff_term => true)
      port map (I => adc_n(i), IB => adc_p(i), O => adc_ddr(i));
    adc_ddr_expand: IDDR2
      generic map (ddr_alignment => "C0")
      port map (C0 => clk_main, C1 => clk_main_neg,
                CE => '1',
                D  => adc_ddr(i),
                Q0 => adc_data(i*2+1), Q1 => adc_data(i*2));
  end generate;

  -- Clk input from ADC.  The ADC drives the data as even on P-falling followed
  -- by odd on P-rising.
  adc_reclk_in: IBUFGDS
    generic map (diff_term => true)
    port map(I => adc_reclk_n, IB => adc_reclk_p, O => adc_reclk_b);
  -- Are these needed?  Do we need to tie them together?
  adc_reclk_buf: BUFIO2
    port map(I => adc_reclk_b, DIVCLK => adc_reclk,
             IOCLK => open, SERDESSTROBE => open);
  adc_reclkfb: BUFIO2FB port map(I => clk_main_neg, O => clk_main_fb);

  -- Pseudo differential drive of clock to ADC.
  adc_clk_ddr_p : oddr2
    port map (D0 => '1', D1 => '0', C0 => adc_clk, C1 => adc_clk_neg,
              Q => adc_clk_p);
  adc_clk_ddr_n : oddr2
    port map (D0 => '0', D1 => '1', C0 => adc_clk, C1 => adc_clk_neg,
              Q => adc_clk_n);

  -- Regenerate the clock from the ADC.
  -- We run the PLL oscillator at 1000MHz, i.e., 4 times the input clock.
  clk_main_pll : PLL_BASE
    generic map(
      CLK_FEEDBACK   => "CLKOUT0",
      DIVCLK_DIVIDE  => 1, CLKFBOUT_MULT => 1,
      CLKOUT0_DIVIDE => 4,
      CLKOUT1_DIVIDE => 4, CLKOUT1_PHASE => 180.0,
      CLKOUT2_DIVIDE => 20, CLKOUT2_PHASE => 36.0,
      CLKIN_PERIOD   => 4.0)
    port map(
      -- Output clocks
      CLKFBIN => clk_main_fb,
      CLKOUT0 => clku_main_neg, CLKOUT1 => clku_main, CLKOUT2 => clku_50m,
      RST     => '0', LOCKED => clk_main_locked,
      CLKIN   => adc_reclk);

  clk_main_bufg     : BUFG port map(I => clku_main,     O => clk_main);
  clk_main_neg_bufg : BUFG port map(I => clku_main_neg, O => clk_main_neg);
  clk_50m_bufg      : BUFG port map(I => clku_50m,      O => clk_50m);

  clkin125_bufg : bufg port map(I => clkin125, O => clkin125_b);

  -- Generate the clock to the ADC.  We run the PLL oscillator at 1000MHz, (8
  -- times the input clock), and then generate a 250MHz output.
  adc_clk_pll : PLL_BASE
    generic map(
      BANDWIDTH      => "LOW",
      CLK_FEEDBACK   => "CLKFBOUT",
      DIVCLK_DIVIDE  => 1, CLKFBOUT_MULT => 8,
      CLKOUT0_DIVIDE => 4,
      CLKOUT1_DIVIDE => 4, CLKOUT1_PHASE => 180.000,
      CLKOUT2_DIVIDE => 5,
      CLKOUT3_DIVIDE => 5, CLKOUT3_PHASE => 180.000,
      CLKIN_PERIOD   => 8.0)
    port map(
      -- Output clocks
      CLKFBIN => adc_clk_fb, CLKFBOUT => adc_clk_fb,
      CLKOUT0 => adc_clk_250,CLKOUT1  => adc_clk_neg_250,
      CLKOUT2 => adc_clk_200,CLKOUT3  => adc_clk_neg_200,
      RST     => '0',        LOCKED   => adc_clk_locked,
      CLKIN   => clkin125_b);

  adc_clk_bufg     : BUFGMUX port map (
    I0 => adc_clk_250, I1 => adc_clk_200, S => adc_clock_select, O => adc_clk);
  adc_clk_neg_bufg : BUFGMUX port map (
    I0 => adc_clk_neg_250, I1 => adc_clk_neg_200,
    S => adc_clock_select, O => adc_clk_neg);

end behavioural;
