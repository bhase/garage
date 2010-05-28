
#include <avr/interrupt.h>
#include <util/delay.h>
#include "ioport.h"
#include "timer.h"

static key_t key_state;
static key_t key_press;
static key_t key_release;

/** \brief Sample start/stop switches
 *
 * As time is not that important here (the isr is only active on
 * wakeup from sleep mode), a double sampling with busy loop is done.
 * */
ISR(INT1_vect)
{
	_delay_ms(50);
	if ((PIND & _BV(PD3)) == 0) {
		/* key pressed */
		key_press |= _BV(PD3);
	}
	/* double sample */
	_delay_ms(50);
	if ((PIND & _BV(PD3)) == 0) {
		/* key pressed */
		key_press |= _BV(PD3);
	}
	led1(OFF);
	led2(OFF);
}

void io_init(void)
{
	/* set direction */
	DDRD &= ~(_BV(PD0) | _BV(PD1) | _BV(PD3));
	/* enable pullup */
	PORTD |= _BV(PD0) | _BV(PD1) | _BV(PD3);
	/* disable interrupt (when running, polling is used) */
	GICR &= ~(_BV(INT1) | _BV(INT0) | _BV(INT2));
	/* led ports as output */
	DDRA |= (_BV(PA7) | _BV(PA6) | _BV(PA5) | _BV(PA4));
	/* set enable line to IC as output */
	DDRB |= _BV(PB0);
}

void io_deinit(void)
{
	/* disable pullup (except irq lines) */
	PORTD &= ~(_BV(PD0) | _BV(PD1));
	/* only low level interrupts are possible to wake up */
	MCUCR &= ~(_BV(ISC11) | _BV(ISC10));
	/* enable interrupt on start/stop button */
	GICR |= _BV(INT1);
}

void io_read_all(void)
{
	if (jiffies % (8 * 1000 / HZ)) {
		return;
	}
	static key_t ct0, ct1;
	/* every 8 ms */
	key_t i;

	/* key changed? */
	i = key_state ^ ~PIND;
	/* reset or count ct0 */
	ct0 = ~(ct0 & i);
	/* reset or count ct1 */
	ct1 = ct0 ^ (ct1 & i);
	/* count until roll over */
	i &= ct0 & ct1;
	/* then toggle debounced state */
	key_state ^= i;
	/* 0 -> 1: key press detected */
	key_press |= key_state & i;
	/* 1 -> 0: key release detected */
	key_release |= ~key_state & i;
}

/* report key press
 * every press is reported only once */
key_t get_key_press(keymask_t key_mask)
{
	cli(); /* read and clear atomic */
	key_mask &= key_press;
	key_press ^= key_mask;
	sei();
	return key_mask;
}

/* report key release
 * every release is reported only once */
key_t get_key_release(keymask_t key_mask)
{
	cli(); /* read and clear atomic */
	key_mask &= key_release;
	key_release ^= key_mask;
	sei();
	return key_mask;
}

key_t get_key_state(keymask_t key_mask)
{
	return key_state & key_mask;
}

position_t position(void)
{
	/* evaluate position */
	if (get_key_state(END_UP) && get_key_state(END_DOWN)) {
		return UNKNOWN;
	} else if (!get_key_state(END_DOWN)) {
		return CLOSE;
	} else if (!get_key_state(END_UP)) {
		return OPEN;
	}
	return UNKNOWN;
}

void led1(led_t state)
{
	PORTA &= ~(_BV(PA4) | _BV(PA5));
	switch (state) {
	case RED:
		PORTA |= _BV(PA4);
		break;
	case GREEN:
		PORTA |= _BV(PA5);
		break;
	default:
		break;
	}
}

void led2(led_t state)
{
	PORTA &= ~(_BV(PA6) | _BV(PA7));
	switch (state) {
	case RED:
		PORTA |= _BV(PA6);
		break;
	case GREEN:
		PORTA |= _BV(PA7);
		break;
	default:
		break;
	}
}

