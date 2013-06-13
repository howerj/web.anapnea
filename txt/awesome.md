TEXT FILES 
==========

A text file about what you should be using text files for (most) of
your work.

WHAT ARE TEXT FILES 
-------------------

Text is nearly everything in a computing system even if you do not
realize it, while the machine runs code that it understands at one
point that was a text file that a person understood, source code. This
text file, is obviously in text, it provides information in a format
that people can understand, in a dense format that it not possible with
images alone. Websites are mostly text files; the HTML and CSS used to
describe their content and presentation along with the scripts that run
along side this. Books, any books regardless of what strange Digital
Rights Management laden formats that they are wrapped up in consist of
text. Emails - text, Usenet - Text, Forums - text, IRC - text, Instant
messaging \- Text, it is all just text files.

You may not realize it but text files give you power, power to edit
and change things, to copy and reuse them, to process and display their
contents in anyway *you* like. To use what ever software *you* want to
use with them without being tied down. Text files are powerful.

MOTIVATION 
----------

Enough of the rhetoric, onto why you should actually be using them for
storing and processing information.

* Text; A timeless format.

Perhaps you are frustrated at all the different formats there are, at
all the different programs there are to read them as well. Maybe you
want a format that is actually readable by all in ten years time instead
of becoming unusable after a few more software iterations and upgrades
have come and gone. It could be that you just like the simplicity of text.

Binary file formats are used too often, sometimes it is done for speed
and because of that the problem the software solves requires it. More
often than not this is not the case. Let us take the example of most
"word processors", which has complicated formats that could not even
be documented, the problem lies in when you either want to switch to
a different software vendor or recover old documents, it can become
impossible to do either.

Most of the important information in our example, word processing
documents, is contained in text, there are other things in these documents
as well; perhaps a little formatting, some pictures, markup. But largely
the information is just text, there is no need to wrap this in some
arbitrary binary format. Instead using a language for document preparation
like LaTeX, which uses text commands to generate nice formatting, means
that in the unlikely event that the LaTeX document preparation system
is not available on the computer of the future you can still, with ease,
extract the important information from those files.

One of the main problems with this line of reasoning, that you may care
about recovering your documents in the future, is that most people do
not care about that fact *now*, they instead just want to get something
done. This is short sighted but completely understandable. There is
little incentive to learn a better technique when you could spend that
time actually tackling the problem; short sighted but understandable.

* Avoiding bloat.

Binary files keep things hidden, you do not know what goes in them and
you do not have the power to edit them yourself. You are forced to use
other programs with them, programs that understand these formats which
could be efficient and well thought out but conversely also could be a
nightmare to process. They tie you to a specific platform, or a select
few programs and these programs might not necessarily be *optimal* to
speak euphemistically. A few of those word processing documents come
to mind, some Integrated Development Environments also do and the main
problem is that if you create a document with X you will probably have
trouble processing it with Y regardless of how much better, faster and
more memory efficient Y is compared with X. You are locked in. Now pick
a text editor, any one; Vi, Vim, Emacs, Pico, Nano, Notepad, SciTE, ed,
ex, etcetera. If you do not like any particular editor you are free to
use another one, perhaps one not even on this list, but that is so long
as you are processing text files.

This helps greatly in avoiding software bloat. Instead of fighting against
someones word processor you can instead worry about the content. You may
have noticed that I dragged IDEs into this fight, while it is true that
they largely do process text files they do go against the grain of what
makes these files so great. They wrap up and hide all the logic that glues
up complicated software projects and hide it from the developer and do
so in ways unknown to them. They take you further away from these files
and sacrifice flexibility and less strain on the computing system for
(initial) ease of use. You can only do what the IDE developer intended for
you to do. For example let us say that you want to do a simple line count
on all the files in a project (something which any IDE will *probably*
have) if there is not an option for it you are stuck. Where as if you
use text files we are conveniently brought to the next section about
processing them.

* Text processing tools.

I have been advocating not just text files, text files on their own
are pretty boring, but I have instead been advocating a philosophy,
the Unix philosophy.  That is where text files get their power from
and hence my criticism of IDEs in the previous section. We can string
a whole series of tiny programs together to achieve our goals, each
tiny text processing utility does its own thing and does it well. We
use another text file, a shell script, to automate and bring together
multiple tiny programs together to process our data and achieve our
goals. All of these programs process text. Not only that, but because
they process text they do not care at all, in the slightest, what this
text actually represents. It could be a novel you have been working on,
a program, customer data, a web-page. The tools stay the same.

You do not need an IDE for working on programming language 'A', one for
programming language 'B', one for working on your novel and another for
web development. The tools stay the same, there is power in this. It
means we can focus on learning and honing our skills with fewer pieces
of software while at the same time being even more general than learning
the ins on outs of a specific IDE. It helps with the aforementioned bloat
problem as well. 

* Human Readable.

While ASCII encoding is arbitrary (there is no reason scientific or mathematical
why '43' represents the character '+' and 33 represents '!'), the decision to
have such an arbitrary code in the first place is not. It is a standard and it
is the lowest common denominator, nearly every computer on the planet can
understand or be made to understand it. It and more advanced coding schemes may
or may not be around for a very long (which is unlikely) but they will always be
easily convertible because of how simple they are. These are formats that will
be understood in thousands of years time, but more than that, they are
understandable immediately by you, now.

PROGRAMS YOU CAN USE 
--------------------

You can use any program you wish, any text editor you want, **you can even make
your own**, text processing is simply that simple. However, any decent Unix
system with your favorite editor (Vim or Emacs) will do. Switch from a normal
word processor to LaTeX, use git to keep control of things, learn how to make
makefiles. It pays off.


FINAL WORDS 
-----------

Agree? Disagree? Want to file a bug report? Contact me! My Email address
is on the main page.

-- howerj

ADDENDUM 
--------

I will not any other contributions and errors here.