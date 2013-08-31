## 2013-07-24 fpga.md

## FPGA, what is holding them back?

[FPGAs][] are immensely powerful devices, while not as powerful as dedicated
circuitry they are more powerful than a generic CPU at doing the same task. They
can process information in a parallel fashion and require a different way of
thinking when they are being used. They are fundamentally different than a CPU
and working on a Von Neumann architecture, instead of queuing instructions to be
executed sequentially we route genetic and simple logic blocks to form state
machines, dedicated processing units, etcetera. You can even put your own CPU on
an FPGA (although it will not be as efficient or powerful as an equivalent one
etched in silicon).

FPGAs are general purpose processing machines of a different kind. They can be
very useful for certain types of tasks; reconfigurable computing, prototyping,
real time processing of data, software defined radios, all kinds of things. 

So why are they not used more often? If they are powerful, if they offer
performance boosts, then why do people not use them more often? There are a few
reasons:

* Problems with the tool chains, No GNU Synthesizer Collection.
* VHDL and Verilog are more akin to assembly language than anything.
* Details, it is difficult to make anything portable.
* FPGAs are difficult. Fact.

### Toolchains

We have a GNU Compiler Collection, we have many open source compilers for our
computers, we have free interpreters, open source Integrated Development
Environments, but not free Synthesizers, no free tool chains for the most
commonly used FGPA devices and we are saddled with what is given to us.

Stuck with only the tools provided with us, that are closed and bloated, we have
no other option but to use them. No one can design a new language to use with
these tools unless they would like to translate from their language to something
the provided tools understand, we are stuck with no other recourse. This
obviously does not suit a lot of people.

Although they provide these tools to *students* for free, they do not to
*businesses*, which is why you will not find as many of them actually using
these tools due to the rather hefty licensing frees.

### HDL assembly language

If anything, VHDL and Verilog are more akin to assembly languages than anything.
Although superficially they look like Ada and C, kind of, they are nothing like
it and to get things done does take a lot of effort. Engineers have to worry
more about the specific details of the devices they are using, which may seem
obvious and necessary to an engineer who develops using a HDL, but that does not
make for a good or easy development environment. We struggled for years having
to worry about *clock cycle* and *bytes of RAM* while developing programs, now
we pay far less attention to these things, the same I do not believe has
happened with HDLs.

### Portability

It is difficult to make any code actually portable. Partly because there is no
higher level languages where you can abstract this out and because there is no
real standard architecture, there are differences that matter between the two
leading brands.

### FPGAs are difficult.

It is a simply fact they are difficult, you have to plan what you want to do
out, you can not simply hack away at things but you *have* to plan things out,
do your research *well* and execute it correctly. 

It is also a completely different way of thinking, everything is concurrent 
and things have to be *inferred* instead of explicitly stated; for example in C
if you do something such as:

	c = b * a;

You know what you will get. In VHDL:

	c <= b * a;

	and

	c := b * a;

Are *very* different. But let us ignore that an concentrate on the
multiplication. This has to be describe in hardware and it is done magically for
you. However it is not clear from looking at the code *how* it will be
described in hardware, is it a physical multiplier or will it be one composed
entirely of Look Up Tables? From the code itself you cannot tell. You have no
idea from the code itself how long that operation will take. It tells you very
little of how the hardware will behave.

There are many sources of confusion for someone just getting started with HDLs
and there is a dearth of good code and tutorials available.

### Final words

There are things that you can do with an FPGA that you will never be able to do
with a normal processor or even a GPU, there are very good reasons to use them
and learn about them, even and especially for the hobbyist. 

They are well worth learning about, even if to only learn new programming
paradigms and open up the *possibility* of using on for something.

[FPGAs]: https://en.wikipedia.org/wiki/Field-programmable_gate_array
