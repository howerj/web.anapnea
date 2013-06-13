FORTH: YES AND NO
=================

I think [FORTH](https://en.wikipedia.org/wiki/Forth_%28programming_language%29)
is a wonderful language, it is simple and powerful. It has been called both a
high and a low level language *at the same time*. It is effectively a
Do-It-Yourself language kit that you build into the language you want it to be.
It can run on incredibly resource constrained devices and at the same time
provide an interactive interpreter, a text editor and a fairly efficient
programming language, all this fitting in *kilobytes*. Not only can it do all
this but the language and system around it (it is a system as well) can be
completely understood by a single person, an impossible feat with modern
computing systems, you can make a fully functional FORTH implementation yourself
and people have done it from the ground up, designing their own CPUs optimized
for executing it. Most implementations also contain a primitive file system
based around blocks, an assembler and a disassembler, some contain tools for
meta compilation as well, it is amazing what you can do with this language.

It would be impossible to do this with nearly every other single modern 
programming language, for example let us take C which is a relatively simple
language by modern standards even if the compiler implementations are not. In
order to get a similar (although I would argue better) development environment
with C first we need an operating system. This sounds obvious, but it is true.
This can range from tens of megabytes (with [Tiny Core Linux](http://tinycorelinux.net/downloads.html) 
and the [Tiny C Compiler](http://bellard.org/tcc/)) 
which is about as small as you can get on a
modern system. Compare this with [amforth](http://amforth.sourceforge.net/), a
fully featured FORTH implementation that fits on a tiny 8bit micro controller.
You can start programming on the device itself. Of course you get get hosted
Forth implementations as well, that simply is not possible with modern C. 

WHAT IS FORTH
=============

There has been some efforts to standardize the language, but because people can
implement their own forth with little effort the standards are not always
followed, in fact I think standardizing the language goes against the philosophy
of the language; to analyze the problem, hardware, algorithms used and software
and use the language to come up with an original solution.

I think forth is a collection of ideas, it is a combination of:

* Stack based system with the stacks exposed to the programmer. One stack
for variables and another for function calls (and temporary variables).
* Threaded code interpreter.
* The language is extensible in itself.
* Keep it small and specific to the problem you want to solve, not general.
* Everything is a space delimited function (or a 'word' in forth terminology).
* Use Reverse Polish Notation to make the language designer's job easier.
* The language should sort of act like a interactive macro assembler.
* You should do the job of the compiler; optimization is up to you.

LANGUAGE OF THE FUTURE
======================

Forth, despite all its advantages, has not caught on and that is for a reason.
It is not the language of the future, it may not even be a language of the
niches it is trying to hold onto in the embedded world. Here are some serious
problems I can think of:

* Lack of adoption.
* 'Weird' syntax.
* Not very readable.
* Too 'powerful'.
* Not a very good model of modern processors.
* Very little in the way of standard libraries and methods for
maintaining/using/creating them.
* It is difficult to use (ie. You have to *think* about things).

I think forth makes a good toy, a good way to learn about computing, a good
system to run on resource constrained systems, but there are better tools out
there now.

A SMALL EXAMPLE
===============

