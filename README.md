# Experimental motor driver for CG-4 German equatorial mounts

This is an experimental stepper motor driver for [*Celestron* CG-4 German equatorial mounts](https://www.celestron.com/products/omni-cg-4-mount-and-tripod). This unit is functionally equivalent to the *[Celestron dual-axis motor driver](https://www.celestron.com/products/dual-axis-motor-drive-for-cg-4-mounts)*, and we developed it as a replacement unit for the original Celestron driver. 

![Prototype version of motor controller](https://raw.githubusercontent.com/dilshan/eq-motor-driver/master/resources/ENCLOSURE_VIEW.JPG)

The core component of this motor driver is [*PIC16F88*](https://www.microchip.com/wwwproducts/en/PIC16F88) 8-bit MCU. This MCU is responsible for driving two motors and scanning the user inputs. As an original unit, this system also got a clock driver for the declination axis.

This system uses two *L293* motor drivers to drive the *right-ascension* (RA) axis and *declination* (DEC) axis motors. This unit is designed to work with 6V bipolar stepper motors, which include in the telescope mount. The *LM350* voltage regulator is used to maintain power to both stepper motors. 

![Internal view of the motor control unit](https://raw.githubusercontent.com/dilshan/eq-motor-driver/master/resources/INTERNAL_VIEW.JPG)

This replacement motor drive provides all the functionalities of the original unit, which including manual *right-ascension* and *declination* movement controls, speed and direction controls. 

A component-wise this prototype is not an efficient design. The main objective of this design is to experiment with the motor driving mechanism and timing. Later we intend to design a more effective and feature-rich controller with the collaboration of digitspace.com. 

**Important:** 
For longer runs (which is generally more than 30 minutes), attach proper heatsinks to *L293* driver ICs and *7805* regulators. *LM350* regulator should always be fixed in a proper heatsink. 

