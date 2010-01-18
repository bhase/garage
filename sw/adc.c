
#include <avr/interrupt.h>
#include "adc.h"
#include "timer.h" /* disable() */
#include "ioport.h"

void adc_init(void)
{
	/* use AIN0, AIN1 */
	SFIOR &= ~(_BV(ACME));
	/* no interrupts, no internal reference */
	ACSR = 0;
}

void adc_deinit(void)
{
	/* disable analog comparator */
	ACSR |= _BV(ACD);
}

/* Tests the comparator flag and counts up.
 * If too long over limit the movement gets stopped. */
void adc_evaluate(void)
{
	static uint8_t counter;
	if (ACSR & _BV(ACO)) {
		/* if current over limit, count up */
		++counter;
	} else if (counter > 0) {
		--counter;
	}
	if (counter > 5) {
		/* x times greater than limit -> stop it */
		led2(RED);
		disable();
	}
}

