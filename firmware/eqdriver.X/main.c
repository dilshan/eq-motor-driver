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

#include "main.h"
#include "motordrv.h"

uint16_t timerDECMotor;
uint16_t timerRAMotor;

uint16_t timerDECMotorLimit;
uint16_t timerRAMotorLimit;

void main(void) 
{
    uint16_t adcVal;
    
    uint8_t decMotorDirection;
    uint8_t tempDirection;
    uint8_t decMotorManual = MOTOR_NO_CONTROL, raMotorManual = MOTOR_NO_CONTROL;
    
    // Initialize the system.
    initSystem();
    __delay_ms(10);   
    
    // Initialize motor interface.
    timerDECMotorLimit = MAX_MOTOR_TIME_DIVIDER;
    timerRAMotorLimit = 0;    
    motorInit();
    
    // Start DEC motor with 1x speed.
    decMotorDirection = (PORTAbits.RA3) ? MOTOR_DIRECTION_UP : MOTOR_DIRECTION_DOWN;
    motorSetDecDirection(decMotorDirection);
        
    // Clear HAND control LED.
    clearHandIndicator();
    
    // Initialize and start timer (TMR2) associated with the motor driver.
    initMotorTimer();    
    enableInterrupts();
    
    while(1)
    {
        // Check manual DEC position button events.
        __delay_ms(25);
        adcVal = getAnalogValue(0);
        
        if((decMotorManual == MOTOR_NO_CONTROL) && (adcVal < ADC_LOWER_LIMIT))
        {
            // Manual DEC increment button event.
            disableInterrupts();
            motorSetDecDirection(MOTOR_DIRECTION_UP);
            timerDECMotorLimit = getMotorSpeedControllerVal();
            decMotorManual = MOTOR_MANUAL_MOVE;
            activateHandIndicator();
            enableInterrupts();
        }
        else if((decMotorManual == MOTOR_NO_CONTROL) && (adcVal > ADC_UPPER_LIMIT))
        {
            // Manual DEC decrement button event.
            disableInterrupts();
            motorSetDecDirection(MOTOR_DIRECTION_DOWN);
            timerDECMotorLimit = getMotorSpeedControllerVal();
            decMotorManual = MOTOR_MANUAL_MOVE;
            activateHandIndicator();
            enableInterrupts();
        }
        else if((adcVal > ADC_LOWER_LIMIT) && (adcVal < ADC_UPPER_LIMIT) && (decMotorManual == MOTOR_MANUAL_MOVE))
        {
            // DEC manual movement is released. Switch to 1x speed.
            disableInterrupts();
            decMotorDirection = (PORTAbits.RA3) ? MOTOR_DIRECTION_UP : MOTOR_DIRECTION_DOWN;
            motorSetDecDirection(decMotorDirection);
            timerDECMotorLimit = MAX_MOTOR_TIME_DIVIDER;
            decMotorManual = MOTOR_NO_CONTROL;
            clearHandIndicator();
            enableInterrupts();
        }
        
        // Check manual RA position button events.
        __delay_ms(25);
        adcVal = getAnalogValue(1);
        
        if((raMotorManual == MOTOR_NO_CONTROL) && (adcVal < ADC_LOWER_LIMIT))
        {
            // Manual RA increment button event.
            disableInterrupts();
            motorSetRaDirection(MOTOR_DIRECTION_UP);
            timerRAMotorLimit = getMotorSpeedControllerVal();
            raMotorManual = MOTOR_MANUAL_MOVE;
            activateHandIndicator();
            enableInterrupts();
        }
        else if((raMotorManual == MOTOR_NO_CONTROL) && (adcVal > ADC_UPPER_LIMIT))
        {
            // Manual RA decrement button event.
            disableInterrupts();
            motorSetRaDirection(MOTOR_DIRECTION_DOWN);
            timerRAMotorLimit = getMotorSpeedControllerVal();
            raMotorManual = MOTOR_MANUAL_MOVE;
            activateHandIndicator();
            enableInterrupts();
        }
        else if((adcVal > ADC_LOWER_LIMIT) && (adcVal < ADC_UPPER_LIMIT) && (raMotorManual == MOTOR_MANUAL_MOVE))
        {
            // RA manual movement is released. Shutdown RA motor.
            disableInterrupts();
            timerRAMotorLimit = 0;
            raMotorManual = MOTOR_NO_CONTROL;
            clearHandIndicator();
            enableInterrupts();
        }
        
        // Check for direction changes.
        tempDirection = (PORTAbits.RA3) ? MOTOR_DIRECTION_UP : MOTOR_DIRECTION_DOWN;
        
        if((raMotorManual == MOTOR_NO_CONTROL) && (decMotorManual == MOTOR_NO_CONTROL) && (tempDirection != decMotorDirection))
        {
            disableInterrupts();
            decMotorDirection = tempDirection;
            motorSetDecDirection(decMotorDirection);            
            enableInterrupts();
        }
        
        __delay_ms(20);
        
    }
    
    return;
}

void __interrupt () interruptManager (void)
{
    // Handle TMR2 interrupt.
    if(PIR1bits.TMR2IF == 1)
    {
        if(timerRAMotorLimit > 0)
        {
            if(timerRAMotor >= timerRAMotorLimit)
            {
                // Current RA motor limit reached for next step.
                motorRaStep();
                timerRAMotor = 0;
            }
            else
            {
                // Increment the RA motor counter until motor limit is reached.
                timerRAMotor++;
            }
        }
        
        if(timerDECMotorLimit > 0)
        {
            if(timerDECMotor >= timerDECMotorLimit)
            {
                // Current DEC motor limit reached for next step.
                motorDecStep();
                timerDECMotor = 0;
            }
            else
            {
                // Increment the DEC motor counter until motor limit is reached.
                timerDECMotor++;
            }
        }
                
        PIR1bits.TMR2IF = 0;
    }
}

void initSystem()
{
    // Disable unused peripherals.
    CCP1CON = 0x00;
    SSPCON  = 0x00;  
    
    // Set PORTB as output port (RA and DEC motor interface).
    TRISB = 0x00;
    PORTB = 0x00;
    
    // PORTA[0..3] configured as inputs. PORTA[4] set as output.
    PORTA = 0x00;
    TRISA = 0xEF;
    
    // Configure ADC to use internal references and set up other conversion settings.
    ANSEL = 0x07;
    ADCON0 = 0x01;
    ADCON1 = 0xC0;
}

uint16_t getAnalogValue(uint8_t channel)
{
    ADCON0bits.CHS = channel;  
    ADCON0bits.ADON = 1;
    
    // Wait until conversion completes.
    __delay_ms(1);
    ADCON0bits.GO_DONE = 1;
    while(ADCON0bits.GO_DONE == 1);
    
    return (ADRESH << 8) + ADRESL;
}

void initMotorTimer()
{
    // Configure TMR2 to generate interrupt with 556.59 Hz (0.00179667 sec.)
    T2CON = T2CON | 104;     
    T2CONbits.TMR2ON = 1;
    T2CONbits.T2CKPS1 = 0;
    T2CONbits.T2CKPS0 = 0;    
    
    // for 0.00179667 sec PR2 should be 231, but set it with offset due to delays in instruction cycles.
    PR2 = 227; 
    
    INTCON = 0;
    
    INTCONbits.TMR0IE = 0;
    PIR1bits.TMR2IF = 0;
    PIE1bits.TMR2IE = 1;
    INTCONbits.TMR0IF = 0; 
}

uint8_t getMotorSpeedControllerVal()
{
    uint16_t adcVal = getAnalogValue(2);
    // Convert ADC value into motor time limit value which range from 4 to 64.
    return (uint8_t)((((MAX_MOTOR_TIME_DIVIDER - MIN_MOTOR_TIME_DIVIDER) * adcVal)/ADC_MAX) + MIN_MOTOR_TIME_DIVIDER);
}
