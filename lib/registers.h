#ifndef REGISTERS_H_
#define REGISTERS_H_

#define REG_RADIO_FREQ(i) ((i) * 4)
#define REG_RADIO_GAIN(i) ((i) * 4 + 3)

#define REG_ADC 16
#define REG_XMIT 17
#define REG_FLASH 18
#define REG_SAMPLE_FREQ 19
#define REG_SAMPLE_GAIN 20
#define REG_ADC_SAMPLE 21
#define REG_MAGIC 0xfe
#define REG_ADDRESS 0xff

#define ADC_SEN 1
#define ADC_SDATA 2
#define ADC_SCLK 4
#define ADC_RESET 8
#define ADC_CLOCK_SELECT 128

#define XMIT_SOURCE(x) ((x) << 2)
#define XMIT_IR 0
#define XMIT_ADC_SAMPLE 4
#define XMIT_FLASH 8
#define XMIT_PHASE 12
#define XMIT_SAMPLE30 16
#define XMIT_TURBO 64
#define XMIT_LOW_LATENCY 128

#define FLASH_CS 1
#define FLASH_DATA 2
#define FLASH_CLK 4
#define FLASH_RECV 8
#define FLASH_XMIT 8
#define FLASH_OVERRUN 128

#define MAGIC_MAGIC 0xb5

#endif
