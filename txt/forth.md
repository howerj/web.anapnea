## 2013-06-15 forth.md

## FORTH: Yes and no

I think [FORTH][] is a wonderful language, it is simple and powerful. It
has been called both a high and a low level language *at the same
time*. It is effectively a Do-It-Yourself language kit that you
build into the language you want it to be.  It can run on incredibly
resource constrained devices and at the same time provide an interactive
interpreter, a text editor and a fairly efficient programming language,
all this fitting in *kilobytes*. Not only can it do all this but the
language and system around it (it is a system as well) can be completely
understood by a single person, an impossible feat with modern computing
systems, you can make a fully functional FORTH implementation yourself
and people have done it from the ground up, designing their own CPUs
optimized for executing it. Most implementations also contain a primitive
file system based around blocks, an assembler and a disassembler, some
contain tools for meta compilation as well, it is amazing what you can
do with this language.

It would be impossible to do this with nearly every other single modern
programming language, for example let us take C which is a relatively
simple language by modern standards even if the compiler implementations
are not. In order to get a similar (although I would argue better)
development environment with C first we need an operating system. This
sounds obvious, but it is true.  This can range from tens of megabytes
(with [Tiny Core Linux][] and the [Tiny C Compiler][] which is about as
small as you can get on a modern system. Compare this with [amforth][],
a fully featured FORTH implementation that fits on a tiny 8bit micro
controller.  You can start programming on the device itself. Of course
you get get hosted Forth implementations as well, that simply is not
possible with modern C.

### What forth is

There has been some efforts to standardize the language, but because
people can implement their own forth with little effort the standards
are not always followed, in fact I think standardizing the language
goes against the philosophy of the language; to analyze the problem,
hardware, algorithms used and software and use the language to come up
with an original solution.

I think forth is a collection of ideas, it is a combination of:

* Stack based system with the stacks exposed to the programmer. One stack
for variables and another for function calls (and temporary variables).
* Threaded code interpreter.  * It is a Reflective and a Concatenative.
* The language is extensible in itself.  * Keep it small and specific
to the problem you want to solve, not general.  * Everything is a
space delimited function (or a 'word' in forth terminology).  * Use
Reverse Polish Notation to make the language designer's job easier.
* The language should sort of act like a interactive macro assembler.
* You should do the job of the compiler; optimization is up to you.

### Language of the future

Forth, despite all its advantages, has not caught on and that is for
a reason.  It is not the language of the future, it may not even be
a language of the niches it is trying to hold onto in the embedded
world. Here are some serious problems I can think of:

* Lack of adoption, the chicken and egg problem.
* 'Weird' syntax, people *are* lazy.
* Not very readable, it *can* be readable but usually is not.
* Too 'powerful', you can change the syntax arbitrarily which is not always a
good thing.
* Not a very good model of modern processors.
* Very little in the way of standard libraries and methods for
maintaining/using/creating them.
* It is difficult to use (ie. You have to *think* about things).
* It is quicker to use a decent optimizing compiler than optimizing code by
hand.

I think forth makes a good toy, a good way to learn about computing, a good
system to run on resource constrained systems, but there are better tools out
there now.

### A small example

A submission to the [International Obfuscated C Coding Competition][]
by 'buzzard' first got me interested in Forth. The implementation was
brutally simple and deficient in ways (because of constraints) but it
weighed in at about 700 bytes of C and 6.5 kB of Forth and mostly written
in itself. In the appendix I give a largely un-obfuscated version of the
code, although no explanation as to how it works, that is an exercise
for you (or you can look at the manual for the [original][]).

It just goes to show that you can fit a powerful system in such a small
amount of room.

### Appendix

[Tiny Core Linux]: http://tinycorelinux.net/downloads.html
[Tiny C Compiler]: http://bellard.org/tcc/
[amforth]: http://amforth.sourceforge.net/
[FORTH]: https://en.wikipedia.org/wiki/Forth_%28programming_language%29
[International Obfuscated C Coding Competition]: http://www.ioccc.org/years.html#1992
[original]: http://www.ioccc.org/1992/buzzard.2.design

#### The Programs

Save the C program as *third.c* and the forth program as *third.fs*,
the reason it is called 'third' and not 'forth' (or fourth) is because
the language described while essentially being forth is not exactly the
same as it.

To run type:

    gcc third.c -o third
    cat third.fs - | ./third

#### C Program

    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>

    /*Current dictionary pointer is at m[0].*/
    #define c m[m[0]++]

    char s[2500];
    int m[2500] = { 32 }, L = 1, I, T[500], *S = T, t = 64, w, f;

    enum primitives{
      PUSH,COMPILE,RUN,DEFINE,IMMEDIATE,READ,LOAD,STORE,SUBTRACT,
      MULTIPLY,DIVIDE,LESSZ,EXIT,EMIT,KEY,PICK,FROMR,TOR,BRANCH,NBRANCH,PRINTNUM,LAST_ENUM
    };

    void compile_word(int x)
    {
    	c=L;
    	L = *m - 1;
    	c=t;
    	c=x;
    	scanf("%s", s + t);
    	t += strlen(s + t) + 1;
    	return;
    }

    void init(void){
    	compile_word(DEFINE);
    	compile_word(IMMEDIATE);
    	compile_word(COMPILE); /*defining _read, a non-immediate word*/
    	w = *m;
    	c=READ;
    	c=RUN;
    	I = *m;
    	c=w;
    	c=I - 1;
    	for (w = LOAD; w < LAST_ENUM;)
        compile_word(COMPILE), c=w++;
    	m[1] = *m;
    	*m += 512;
    }

    void run(void)
    {
      int x;
      while(1){
        x = m[I++];
        INNER:
    	    switch (m[x++]) {
    	    case PUSH:
            *++S = f;
            f = m[I++];
            break;
    	    case COMPILE:
            c=x;
            break;
    	    case RUN:
            m[++m[1]] = I;
            I = x;
            break;
    	    case DEFINE:
            compile_word(1);
            c=2;
            break;
    	    case IMMEDIATE:
            *m -= 2;
            c=2;
            break;
    	    case READ:
            for (w = scanf("%s", s) < 1 ? exit(0), 0 : L; strcmp(s, &s[m[w + 1]]); w = m[w]) ;
            if(w-1){
              x=w+2;
              goto INNER;
            } else {
              c=2; c=atoi(s);
            }
            break;
    	    case LOAD:
            f = m[f];
            break;
    	    case STORE:
            m[f] = *S--;
            f = *S--;
            break;
    	    case SUBTRACT:
            f = *S-- - f;
            break;
    	    case MULTIPLY:
            f *= *S--;
            break;
    	    case DIVIDE:
            f = *S-- / f;
            break;
    	    case LESSZ:
            f = 0 > f;
            break;
    	    case EXIT:
            I = m[m[1]--];
            break;
    	    case EMIT:
            putchar(f);
            f = *S--;
            break;
    	    case KEY:
            *++S = f;
            f = getchar();
            break;
    	    case PICK:
            f = S[-f];
            break;
    	    case FROMR:
            *++S = f;
            f = m[m[1]--];
            break;
    	    case TOR:
            m[++m[1]] = f;
            f = *S--;
            break;
    	    case BRANCH:
            I+=m[I];
            break;
    	    case NBRANCH:
            if(f==0){
              I+=m[I] ;
            } else {
              I++;
            } 
            f = *S--;
            break;
    	    case PRINTNUM:
            printf("%d",f);
            f = *S--;
            break;
    	    default:
            fprintf(stderr,"Unknown instruction\n");
            exit(1);
    	    }
      }
    }

    int main(void)
    {
    	init();
    	run();
    	return 0;
    }

#### Forth program.
    : immediate _read @ ! - * / <0 exit emit key _pick r> >r branch notbranch printnum
    : r 1 exit
    
    : ] r @ 1 - r ! _read ]
    
    : _main immediate r @ 7 ! ]
    _main
    
    : _x 3 @ exit
    : _y 4 @ exit
    : _x! 3 ! exit
    : _y! 4 ! exit
    : swap _x! _y! _x _y exit
    : dup _x! _x _x exit
    : over _x! _y! _y _x _y ;
    : + 0 swap - - exit
    : inc dup @ 1 + swap ! exit
    : h 0 exit
    : , h @ ! h inc exit
    : ' r @ @ dup 1 + r @ ! @ exit
    : ; immediate ' exit , exit
    : drop 0 * + ;
    : tail r> r> drop >r ;
    : minus 0 swap - ;
    : bnot 1 swap - ;
    : < - <0 ;
    : > swap < ;
    : <= 1 + < ;
    : >= swap <= ;
    : logical dup 0 < swap minus 0 < + ;
    : not logical bnot ;
    : = - not ;
    : here h @ ;
    
    : if immediate ' notbranch , here 0 , ;
    
    : then immediate dup here swap - swap ! ;
    
    : '\n' 10 ;
    : '"' 34 ;
    : 'space' 32 ;
    : ')' 41 ;
    : '0' 48 ;
    
    : find-) key ')' = not if tail find-) then ;
    
    : ( immediate find-) ;
    
    ( we should be able to do FORTH-style comments now )
    
    ( this works as follows: ( is an immediate word, so it gets
      control during compilation.  Then it simply reads in characters
      until it sees a close parenthesis.  once it does, it exits.
      if not, it pops off the return stack--manual tail recursion. )
    
    ( now that we've got comments, we can comment the rest of the code! )
    
    : else immediate
      ' branch ,        ( compile a definite branch )
      here            ( push the backpatching address )
      0 ,            ( compile a dummy offset for branch )
      swap            ( bring old backpatch address to top )
      dup here swap -    ( calculate the offset from old address )
      swap !        ( put the address on top and store it )
    ;
    
    : cr '\n' emit exit
    
    : .
      dup 0 <
      if
        45 emit minus
      then
      printnum
      'space' emit
    ;
    
    
    ( the following routine takes a pointer to a string, and prints it,
      except for the trailing quote.  returns a pointer to the next word
      after the trailing quote )
    
    : _print
      dup 1 +
      swap @
      dup '"' =
      if
        drop exit
      then
      emit
      tail _print
    ;
    
    : print _print ;
    
      ( print the next thing from the instruction stream )
    : immprint
      r @ @
      print
      r @ !
    ;
    
    : find-"
      key dup ,
      '"' =
      if
        exit
      then
      tail find-"
    ;
    
    : " immediate
      key drop
      ' immprint ,
      find-"
    ;
    
          
    : execute
      8 !
      ' exit 9 !
      8 >r
    ;
    
    : :: ;        ( :: is going to be a word that does ':' at runtime )
    
    : fix-:: immediate 3 ' :: ! ;
    fix-::
    
        ( Override old definition of ':' with a new one that invokes ] )
    : : immediate :: ] ;
    
    : command
      here 5 !        ( store dict pointer in temp variable )
      _read            ( compile a word )
                ( if we get control back: )
      here 5 @
      = if
        tail command    ( we didn't compile anything )
      then
      here 1 - h !        ( decrement the dictionary pointer )
      here 5 @        ( get the original value )
      = if
        here @        ( get the word that was compiled )
        execute        ( and run it )
      else
        here @        ( else it was an integer constant, so push it )
        here 1 - h !    ( and decrement the dictionary pointer again )
      then
      tail command
    ;
    
    
    : [ immediate command ;
    : _welcome " Welcome to THIRD.
    Ok.
    " ;
    
    : ; immediate ' exit , command exit
    
    [
    
    _welcome
