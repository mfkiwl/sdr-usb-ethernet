library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.defs.all;

-- We run off a 12.5mhz clock, transferring 1 byte every 4 cycles.  This gives
-- us a 3.125MB/s transfer rate, which should be comfortably within the ability
-- of the FT2232H async I/O.
-- xmit strobes data in [subject to dead time] on clocks that are a multiple
-- of 4.
-- tx_overrun is asserted if xmit if writes block.
-- it is cleared when xmit takes effected.
entity usbio is
  generic (config_bytes : integer;
           packet_bytes : integer;
           defconfig : unsigned := "0");
  port (usbd_in : in unsigned8;
        usbd_out : out unsigned8;
        usb_oe_n : out std_logic := '1';

        usb_nRXF : in std_logic;
        usb_nTXE : in std_logic;
        usb_nRD : out std_logic := '1';
        usb_nWR : out std_logic := '1';

        config : out unsigned(config_bytes * 8 - 1 downto 0) := resize(
          defconfig, config_bytes * 8);

        packet : in unsigned(packet_bytes * 8 - 1 downto 0);
        xmit : in std_logic;
        tx_overrun : out std_logic;

        clk : in std_logic);
end usbio;

architecture behavioural of usbio is
  -- We do 1 byte in each direction every 4 clock cycles, 3.125MB/s.
  signal phase : integer range 0 to 3;

  -- Position in config.
  signal in_count : integer range 0 to config_bytes - 1;

  -- Config being captured from USB.
  signal in_buf : unsigned(config_bytes * 8 - 1 downto 0);

  -- Packet being sent to USB.
  signal out_buf : unsigned(packet_bytes * 8 - 1 downto 0);
  signal xmit_buf : std_logic;

  signal nTXE : std_logic;
  signal nRXF : std_logic;

  -- 00/01/10 to decide which byte to output.
  signal out_count : integer range 0 to packet_bytes - 1;
begin
  process
  begin
    wait until rising_edge(clk);

    phase <= phase + 1;

    usbd_out <= out_buf(out_count * 8 + 7 downto out_count * 8);

    usb_nWR <= '1';
    usb_nRD <= '1';
    usb_oe_n <= '1';
    -- We have 4 periods of 80ns.
    -- 0/1 write, 3 capture txe.
    -- 2/3 read, 1 capture rxf.
    case phase is
      when 0 =>
        if nTXE = '0' and xmit_buf = '1' then
          usb_oe_n <= '0';
        end if;
        if nRXF = '0' and in_count = config_bytes - 1 then
          config <= in_buf;
        end if;
        if nRXF = '1' or in_count = config_bytes - 1 then
          in_count <= 0;
        else
          in_count <= in_count + 1;
        end if;
      when 1 =>
        if nTXE = '0' and xmit_buf = '1' then
          usb_oe_n <= '0';
          usb_nWR <= '0';
        end if;
        nRXF <= usb_nRXF;
      when 2 =>
        usb_nRD <= nRXF;
        if nTXE = '1' then
          tx_overrun <= '1';
        elsif out_count >= packet_bytes - 1 then
          if xmit = '1' then
            out_count <= 0;
          end if;
          out_buf <= packet;
          xmit_buf <= xmit;
          tx_overrun <= '0';
        else
          out_count <= out_count + 1;
        end if;
      when 3 =>
        in_buf <= usbd_in & in_buf(config_bytes * 8 - 1 downto 8);
        nTXE <= usb_nTXE;
    end case;
  end process;
end behavioural;