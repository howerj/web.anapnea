## 2013-09-06 fyp.md

## A computing system written in VHDL

For a while I have been working on a project whose scope has exploded, I want to
do absolutely everything so it might be *years* before it is done as I am only
working on this part time. 

### Introduction:

So what does this project do? It is a small computing system, a very basic one
that has been expanded upon, built around a stack based processor which is very
similar to the [J1][] processor written in [Verilog][]. I have translated this
processor into [VHDL][] and tested it on an [FPGA][]. 

There are a few expansions on the [J1][] design, for example I have
recently added interrupts and added a few more ALU instructions (as well as
removing some others due to them not meeting timing constraints).

The target device is a development board called the Nexys 3, made by Digilent.

### Peripherals:

<<<<<<< HEAD
Most of the code for the peripherals I did not write, I do not have the
equipment to debug the components or even a fast enough computer to debug
them. This is a shame but instead of reinventing the wheel I have used
other peoples code, often with only minor modifications.

The list of I/O peripherals is as follows:

* UART

A UART (Tx/Rx) that seems slightly buggy.

* VGA 

Fully working and tested, an 80x40 text based device.

* Keyboard 

A PS/2 Keyboard interface.

* Push buttons

A set of push buttons that look like a game pad controller.

* Switches

A row of 8 switches.

* LEDs
=======
As of September 2013 the system contains the following in the way of
peripherals:

* VGA Text Mode output
* General Purpose Timer
* DAC Interface for the AD5641 (not tested).
* UART, Transmit and receive.
* Switch and LED output.

### Firmware:

The firmware is not much to behold.

### Current Status:
>>>>>>> f8f5f49b9bdac9c1d6f7ab6e0af42f2de9607d3d

A bank of 8 LEDs in line with the switches.

### Plans

The next step will be to get a working Forth interpreter on the device, this is
a major task which will require the development of a more mature tool chain
before it can proceed. After an interface to memory for permanent storage would
also be a requisite for a more complete experience.

[J1]: http://www.excamera.com/sphinx/fpga-j1.html
[Verilog]: https://en.wikipedia.org/wiki/Verilog
[VHDL]: https://en.wikipedia.org/wiki/VHDL
[FPGA]: https://en.wikipedia.org/wiki/FPGA
[Nexys 3]: http://www.digilentinc.com/
