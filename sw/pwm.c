/** \file
 * \brief everything around pwm
 *
 */

#include <avr/interrupt.h>
#include "pwm.h"
#include "timer.h"

/** start of pwm duty (in %) */
#define START 40

/** end of pwm duty (in %) */
#define END 100

/** TOP is the value the counter counts up to.
 * It restricts the frequency of pwm (about 8 kHz with 8 MHz system) */
#define TOP 0x1FF

/** the pwm shall ramp up in 500 ms and ramp down in 500 ms
 * so every x ms it has to be increased or decreased */
#define STEPTIME (((END-START)*500)/HZ)

/** current level of pwm duty cycle in % */
static volatile unsigned char current = START;

static char reg = 'A';

void pwm_init(void)
{
	/* outputs to zero */
	PORTD &= ~(_BV(PD5) | _BV(PD4));
	/* start with zero */
	OCR1A = 0;
	OCR1B = 0;
	/* two independent outputs, TOP in ICR1 */
	TCCR1A = (1 << COM1A1) | (1 << COM1B1);
	TCCR1B = (1 << WGM13);
	/* freqeuncy about 8 kHz with internal 8 MHz oscillator */
	ICR1 = TOP;
	/* PD4 and PD5 as output */
	DDRD |= _BV(PD5) | _BV(PD4);
}

void pwm_deinit(void)
{
	OCR1A = 0;
	OCR1B = 0;
	/* Clock sources off -> no PWM */
	TCCR1A = 0;
	TCCR1B = 0;
	/* outputs to zero */
	PORTD &= ~(_BV(PD5) | _BV(PD4));
}

static void pwm_set_duty(unsigned char duty)
{
	if (duty > 100) {
		duty = 100;
	}
	/* set duty cycle of the current used pwm */
	if (reg == 'A') {
		OCR1B = 0;
		OCR1A = (duty * TOP) / 100;
	} else if (reg == 'B') {
		OCR1A = 0;
		OCR1B = (duty * TOP) / 100;
	}
}

uint8_t pwm_ramp_up(void)
{
	if (current < END) {
		if (jiffies % STEPTIME) {
			return current;
		}
		/* set new level */
		current++;
		pwm_set_duty(current);
		return current;
	}
	return 0;
}

uint8_t pwm_ramp_down(void)
{
	if (current > START) {
		if (jiffies % STEPTIME) {
			return current;
		}
		/* set new level */
		unsigned char diff = (current - START)/2;
		if (diff) {
			current -= diff;
			pwm_set_duty(current);
			return current;
		} else {
			return 0;
		}
	}
	return 0;
}

void pwm_start(rotation_t rot)
{
	current = START;
	if (rot == CLW) {
		/* clockwise rotation */
		reg = 'A';
	} else {
		/* counterclockwise rotation */
		reg = 'B';
	}
	pwm_set_duty(current);
	/* start pwm: clock on, no prescaler */
	TCCR1B |= (1 << CS10);
}

void pwm_stop(void)
{
	current = 0;
	pwm_set_duty(current);
}
