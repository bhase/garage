
# source files
SRC = $(wildcard *.c)

# Target controller
MCU_TARGET = atmega16
FCPU = 8000000UL

# Programmer settings (used by make flash)
DUDE = avrdude
PROGDEVICE = usb
PROGRAMMER = jtag2

# Output file
OUT = garage

#ifeq ($(MAKECMDGOALS),)
#SRC += host_main.c
#CPPFLAGS += -DHOST
#else
#SRC += target_main.c
CC = avr-gcc
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
CFLAGS += -mmcu=$(MCU_TARGET) -DF_CPU=$(FCPU)
LDFLAGS = -Wl,-Map,$(OUT).map
#endif

OBJ = $(SRC:.c=.o)
CFLAGS += -Wall -ggdb -O2

all: target

#host: $(SRC) $(OBJ)
#	@$(CC) -o $(OUT) $(OBJ)

flash: target
	@$(DUDE) -p $(MCU_TARGET) -P $(PROGDEVICE) -c $(PROGRAMMER) \
		-U flash:w:$(OUT).hex:i

target: $(OUT).elf lst text eeprom

$(OUT).elf: $(OBJ)
	@$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

lst: $(OUT).lst

%.lst: %.elf
	@$(OBJDUMP) -h -S $< > $@

text: hex bin srec

hex: $(OUT).hex
bin: $(OUT).bin
srec: $(OUT).srec

%.hex: %.elf
	@$(OBJCOPY) -j .text -j .data -O ihex $< $@

%.srec: %.elf
	@$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	@$(OBJCOPY) -j .text -j .data -O binary $< $@

eeprom: ehex ebin esrec

ehex: $(OUT)_eeprom.hex
ebin: $(OUT)_eeprom.bin
esrec: $(OUT)_eeprom.srec

%_eeprom.hex: %.elf
	@$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O ihex $< $@ \
	|| { echo empty $@ not generated; exit 0; }

%_eeprom.srec: %.elf
	@$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O srec $< $@ \
	|| { echo empty $@ not generated; exit 0; }

%_eeprom.bin: %.elf
	@$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O binary $< $@ \
	|| { echo empty $@ not generated; exit 0; }

clean:
	@rm -f *.o
	@rm -f $(OUT) $(OUT).elf
	@rm -f *.lst *.map *.hex *.bin *.srec

docclean:
	@rm -rf html
