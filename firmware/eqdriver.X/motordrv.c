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

#include "sysconfig.h"

#include <xc.h>
#include <stdint.h>

#include "motordrv.h"

volatile uint8_t motorDEC;
volatile uint8_t motorRA;

void motorInit()
{
    uint8_t motorPos = 0;
    
    motorDEC = 0;
    motorRA = 0;
    
    // Set motor maps to forward direction and move motors into known state.
    motorSetDecDirection(MOTOR_DIRECTION_UP);
    motorSetRaDirection(MOTOR_DIRECTION_UP);
    
    while(motorPos < 5)
    {
        motorStep();
        motorPos++;
        __delay_ms(50);
    }
    
    // Clear both RA and DEC motor maps.
    motorSetDecDirection(MOTOR_IDLE);
    motorSetRaDirection(MOTOR_IDLE);
}

void motorSetDirectionMap(uint8_t direction, volatile uint8_t* srcMap, const uint8_t* upMap, const uint8_t* downMap)
{
    uint8_t pos;
    
    // Fill zeros to direction map if current direction is set to idle.
    if(direction == MOTOR_IDLE)
    {
        for(pos = 0; pos < 4; pos++)
        {
            srcMap[pos] = 0;
        }
        
        return;
    }
    
    // Fill motor map with required direction map.
    for(pos = 0; pos < 4; pos++)
    {
        srcMap[pos] = direction ? upMap[pos] : downMap[pos];
    }    
}

inline void motorStep()
{
    PORTB = motorMapDec[motorDEC] | motorMapRa[motorRA];
    
    motorDEC = motorDEC + ((motorDEC >= 3) ? -3 : 1);
    motorRA = motorRA + ((motorRA >= 3) ? -3 : 1);
}

inline void motorDecStep()
{
    PORTB = motorMapDec[motorDEC] | motorMapRa[motorRA];
    motorDEC = motorDEC + ((motorDEC >= 3) ? -3 : 1);
}

inline void motorRaStep()
{
    PORTB = motorMapDec[motorDEC] | motorMapRa[motorRA];
    motorRA = motorRA + ((motorRA >= 3) ? -3 : 1);
}