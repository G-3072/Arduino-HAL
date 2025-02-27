#include <stdint.h>

#define FLASH_START     0x0000U
#define FALSH_SIZE      (32 * 1024) // 32kB of
#define FLASH_END       (FLASH_START + FALSH_SIZE)

#define SRAM_OFFSET     0x800000U
#define SRAM_START      (0x0100U + SRAM_OFFSET)
#define SRAM_SIZE       (2 * 1024) //2kB of SRAM
#define SRAM_END        (SRAM_START + SRAM_SIZE)

#define STACK_START     SRAM_END

void Reset_Handler(void);

uint16_t isr_vector[] __attribute__((section(".isr_vector"))) = {   //interupt vector table
    (uint16_t) &Reset_Handler,
};

void main(void);
extern uint32_t _stext, _etext, _sdata, _edata, _sbss, _ebss, _srodata, _erodata, _sidata;

void Reset_Handler(void){

}