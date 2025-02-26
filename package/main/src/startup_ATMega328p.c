#include <stdint.h>

#define FLASH_START     0x0000U
#define FALSH_SIZE      (32 * 1024) // 32kB of
#define FLASH_END       ((FLASH_START) + (FLASH_END))

#define SRAM_START      0x0100U
#define SRAM_SIZE       (2 * 1024) //2kB of SRAM
#define SRAM_END        ((SRAM_START) + (SRAM_SIZE))

#define STACK_START     SRAM_END

void reset_handler(void){


    main();
}

uint16_t vectorTable[] = {
    (uint64_t) &reset_handler,
};

