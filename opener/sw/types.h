/** \file
 *
 */

#ifndef TYPES_H
#define TYPES_H

typedef enum direction_t {
	UP,
	DOWN,
	ASK
} direction_t;

typedef enum position_t {
	OPEN,
	CLOSE,
	UNKNOWN
} position_t;

typedef enum rotation_t {
	/** clockwise */
	CLW,
	/** counterclockwise */
	CCW
} rotation_t;

#endif
