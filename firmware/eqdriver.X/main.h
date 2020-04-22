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

#ifndef MAIN_H
#define	MAIN_H

#include <stdint.h>

#define MOTOR_MANUAL_MOVE       0xFF
#define MOTOR_NO_CONTROL        0x00

#define ADC_UPPER_LIMIT         650         
#define ADC_LOWER_LIMIT         380
#define ADC_MAX                 1023

#define MAX_MOTOR_TIME_DIVIDER  64      
#define MIN_MOTOR_TIME_DIVIDER  4

void initSystem(void);
uint16_t getAnalogValue(uint8_t channel);
void initMotorTimer(void);
uint8_t getMotorSpeedControllerVal(void);

#define enableInterrupts()  INTCON = INTCON | 0xC0
#define disableInterrupts() INTCON = INTCON & 0x3F

#define activateHandIndicator() PORTA = PORTA | 0x10
#define clearHandIndicator()    PORTA = PORTA & 0xEF

#endif	/* MAIN_H */

