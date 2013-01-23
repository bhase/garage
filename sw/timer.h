/** \file
 *
 */

#ifndef TIMER_H
#define TIMER_H

/** number of timer ticks
 *
 * Do not fiddle around with this directly */
extern volatile unsigned long jiffies;

/** number of timer interrupts per second */
#define HZ 1000

/* from linux kernel jiffies.h */
/** \brief Macro to compare times safe
 *
 * The macro returns true if the time a is after time b.
 * \param a time parameter one (e.g. jiffies)
 * \param b time parameter two (e.g. timeout)
 */
#define time_after(a, b) ((long)(b) - (long)(a) < 0)
/** \brief Macro to compare times safe
 *
 * The macro returns true if the time a is before time b.
 * \param a time parameter one (e.g. jiffies)
 * \param b time parameter two (e.g. timeout)
 */
#define time_before(a, b) (time_after(b,a))

/** \brief Initializes the system timer
 *
 */
void timer_init(void);

/** \brief Deinitializes the system timer
 *
 */
void timer_deinit(void);

/** \brief Waits until the next timer tick occurd
 *
 * This function is intended to be a rough scheduler
 */
void wait_for_timer_tick(void);

/** \brief Stops the current work
 *
 * defined in main.c
 */
void disable(void);

#endif
