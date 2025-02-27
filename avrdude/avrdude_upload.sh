

/mnt/c/Users/gasc/AppData/Local/Arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin/avrdude.exe \
  -C /home/gasc/work/arduino/Arduino-HAL/avrdude/avrdude.conf \
  -v -p atmega328p -c arduino -P COM3 -b 115200 -U flash:w:/home/gasc/work/arduino/Arduino-HAL/build/package/main/arduino-bare-metal.hex:i
