/** \file
 *
 */

#ifndef PWM_H
#define PWM_H

#include <stdint.h>
#include "types.h"

void pwm_init(void);
void pwm_deinit(void);
uint8_t pwm_ramp_up(void);
uint8_t pwm_ramp_down(void);
void pwm_start(rotation_t rot);
void pwm_stop(void);
void pwm_enable_interrupt(void);

#endif
