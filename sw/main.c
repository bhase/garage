/** \file
 * \brief Control flow of garage door control
 *
 */

#include <stdint.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "types.h"
#include "timer.h"
#include "ioport.h"
#include "adc.h"
#include "pwm.h"

/** gives the direction to which shall be run */
static volatile direction_t direction = ASK;

/* run_enable can be influenced (via disable/enable) by 
 * - ADC (current to high)
 * - ioport (Start/Stop switch)
 * - ioport (end switch)
 */
static volatile uint8_t run_enable;

void disable(void)
{
	run_enable = 0;
}

static inline void enable(void)
{
	run_enable = 1;
}

void start_moving(direction_t dir)
{
	enable();
	CHIP_ENABLE();
	switch (dir) {
	case UP:
		pwm_start(CLW);
		break;
	case DOWN:
		pwm_start(CCW);
		break;
	default:
		break;
	}
}

void stop_moving(void)
{
	pwm_stop();
	CHIP_DISABLE();
	/* next start request runs in opposite direction */
	if (direction == UP) {
		direction = DOWN;
	} else {
		direction = UP;
	}
}

void init(void)
{
	io_init();
	adc_init();
	pwm_init();
	timer_init();
	sei();
}

void deinit(void)
{
	cli();
	timer_deinit();
	pwm_deinit();
	adc_deinit();
	io_deinit();
}

void sleep(void)
{
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	cli();
	/* check conditions */
	if (!get_key_press(START_BT)) {
		sleep_enable();
		sei();
		sleep_cpu();
		sleep_disable();
	}
	sei();
}

int main(void)
{
	uint8_t retval;
	while (1) {
		init();
		for (retval = 0; retval < 50; retval++) {
			/* wait x ms until inputs are debounced */
			wait_for_timer_tick();
		}
		if (direction == ASK) {
			if (position() == OPEN) direction = DOWN;
			else direction = UP;
		}
		if (!get_key_press(START_BT)) {
			goto unintended_wakeup;
		}
		led1(GREEN);
		start_moving(direction);
		retval = 1;
		while (run_enable && retval) {
			wait_for_timer_tick();
			retval = pwm_ramp_up();
			if (get_key_press(START_BT)) {
				disable();
			}
		}
		while (run_enable) {
			wait_for_timer_tick();
			if (get_key_press(START_BT)) {
				disable();
			}
		}
		retval = 1;
		while (retval) {
			wait_for_timer_tick();
			retval = pwm_ramp_down();
		}
		stop_moving();
unintended_wakeup:
		led1(OFF);
		deinit();
		sleep();
	}
	/* never reached */
	return 0;
}
