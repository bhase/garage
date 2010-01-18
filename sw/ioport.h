/** \file
 *
 */

#ifndef IOPORT_H
#define IOPORT_H

#include "types.h"

typedef volatile uint_fast8_t key_t;
typedef volatile uint_fast8_t keymask_t;

typedef enum led_t {
	OFF,
	GREEN,
	RED
} led_t;

#define START_BT _BV(PD3)
#define END_UP _BV(PD1)
#define END_DOWN _BV(PD0)

#define CHIP_ENABLE() PORTB |= _BV(PB0)
#define CHIP_DISABLE() PORTB &= ~_BV(PB0)

void io_init(void);
void io_deinit(void);
void io_read_all(void);
position_t position(void);
key_t get_key_press(keymask_t key_mask);
key_t get_key_release(keymask_t key_mask);
key_t get_key_state(keymask_t key_mask);
void led1(led_t state);
void led2(led_t state);

#endif
