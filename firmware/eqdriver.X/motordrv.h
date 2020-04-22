/******************************************************************************
 * MIT License
 *
 * Copyright (c) 2020 Dilshan R Jayakody [jayakody2000lk@gmail.com]
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 ******************************************************************************/

#ifndef MOTORDRV_H
#define	MOTORDRV_H

#include <stdint.h>

#define MOTOR_DIRECTION_UP      0x01
#define MOTOR_DIRECTION_DOWN    0x00
#define MOTOR_IDLE              0xFF

volatile uint8_t motorMapDec[4];
volatile uint8_t motorMapRa[4];

const uint8_t motorMapDecUp[4]      = {0x02, 0x08, 0x01, 0x04};
const uint8_t motorMapDecDown[4]    = {0x01, 0x08, 0x02, 0x04};

const uint8_t motorMapRaDown[4]     = {0x20, 0x80, 0x10, 0x40};
const uint8_t motorMapRaUp[4]       = {0x10, 0x80, 0x20, 0x40};

#define motorSetDecDirection(direction) motorSetDirectionMap(direction, motorMapDec, motorMapDecUp, motorMapDecDown)
#define motorSetRaDirection(direction) motorSetDirectionMap(direction, motorMapRa, motorMapRaUp, motorMapRaDown)

void motorInit(void);
void motorSetDirectionMap(uint8_t direction, volatile uint8_t* srcMap, const uint8_t* upMap, const uint8_t* downMap);

inline void motorStep(void);
inline void motorDecStep(void);
inline void motorRaStep(void);

#endif	/* MOTORDRV_H */

