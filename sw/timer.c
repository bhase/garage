/** \file
 * \brief Timer init, deinit and timing behaviour
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include "timer.h"
#include "adc.h"
#include "ioport.h"

volatile unsigned long jiffies;

/* system timer: 1ms elapsed */
ISR(TIMER2_COMP_vect)
{
	jiffies++;
}

void timer_init(void)
{
	/* avoid overflow problems -- now we have about 49 days for one trip */
	jiffies = 0;
	/* CTC mode, no output, prescaler = 32 (8 MHz) */
	TCCR2 = (1<<WGM21) | (1<<CS21) | (1<<CS20);
	/* 1ms with previous settings */
	OCR2 = 250;
	/* enable interrupt */
	TIMSK |= (1<<OCIE2);
}

void timer_deinit(void)
{
	/* disable interrupt */
	TIMSK &= ~(1<<OCIE2);
	/* disable timer */
	TCCR2 = 0;
}

void wait_for_timer_tick(void)
{
	unsigned long temp = jiffies;
	/* debounce and read inputs */
	io_read_all();
	if (get_key_release(END_UP | END_DOWN)) {
		disable();
	}
	/* calculate current */
	adc_evaluate();
	/* wait until timer tick */
	while (jiffies == temp) ;
}

unsigned long timer_get_count(void)
{
	return jiffies;
}

