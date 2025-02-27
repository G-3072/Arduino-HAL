ENTRY(Reset_Handler)

MEMORY
{
    SRAM (rw)       : ORIGIN = 0x800100,    LENGTH = 2K     /*set ram size and to read and write*/
    FLASH (rx)      : ORIGIN = 0x0000,      LENGTH = 32K    /*set flash size and to execute and read*/
    EEPROM (rw)     : ORIGIN = 0x810000,    LENGTH = 1K     /*set EEPROM size and to read/write*/
}

SECTIONS
{
    .isr_vector : 
    {
        KEEP(*(.isr_vector))
    } >FLASH

    .text : 
    {
        . = ALIGN(4);   /*alignment set to 4Bytes for faster performance*/
        _stext = .;     /*save text section starting address in variable (in startup code)*/

        *(.text)        /*pull all text parts to this section*/

        . = ALIGN(4);
        _etext = .;     /*save text section ending address in variable (in startup code)*/
    } >FLASH            /*stored in flash*/

    _sidata = LOADADDR(.data)

    .data :
    {
       . = ALIGN(4);    /*alignment set to 4Bytes for fast performance >= 32bit var*/
        _sdata = .;

        *(.data)

        . = ALIGN(4);
        _edata = .;
    } >SRAM AT>FLASH

    .bss :
    {
        . = ALIGN(4);
        _sbss = .;

        *(.bss)

        . = ALIGN(4);
        _ebss = .;
    } >SRAM

    .rodata :
    {
        . = ALIGN(4);
        _srodata = .;

        *(.rodata)

        . = ALIGN(4);
        _erodata = .;
    } >FLASH
}