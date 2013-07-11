## 2013-06-15 comptool.md

## Computing Tools

I have recently been struggling with a recent installation of [mutt][], an Email
client with a [Text-based User Interface][], something I wish more programs
would use. It has been very difficult getting things set up and I am still not
completely transitioned but it will eventually be worth it. I have been meaning
to move clients from Thunderbird for a while, the major problem being that I
nearly always have some sort of important Email to sort out.

My experience with computing has been one long gradual change from tools that
are okay for the task to ones that are incredibly customized, use far less in
the way of resources and allow for a much improved work flow. Some people are
fine with a sudden transition, moving from Windows to some of the more advanced
flavors of Linux straight away but for me it has been a gradual process, one in
which I have still a lot to learn.

### Mutt

An installation of mutt is not something that is trivial. I found unfortunately
that most of the best information was in the way of examples and not
explanations, examples that have been put onto various different blogs all over
the net, it reminds me of trying to get something working with *hostapd* or with
the *ARM* series of chips where the information is out there but it might not be
in the best documented form, where things can fail for so many different
reasons, although not as bad as those two.

I have a fairly standard set up; mutt, msmtp and offlineimap form the three
tools for reading, sending and fetching mail respectively. One of the great
aspects about mutt is it largely follows the Unix philosophy; do one thing and
do it well. 

I am still in the process of setting mutt up and I probably will be for the next
half a year, it is the same with Vim, Linux and other tools. I of course have
other things to do and will not be entirely focusing on it, but I will be
changing things constantly, a tiny optimization (for my work flow) here and
there. It is not trivial, but the great thing about it is that if I want to move
to a new computer or to reinstall things it does not take too long, once I have
put in that initial effort to learn these tools it does pay off in the long run,
moving now just consists of installing a few packages and copying some *text
files* across for configuration.

This way of doing things is not for everyone, it is certainly frustrating
getting something just working initially but here are some advantages that apply
to not just mutt but to other software:

### Advantages

* Information is *not* hidden

One concept in software development is that information should be hidden as much
as possible so as not to interfere with other parts of the system. This is a
principle largely applied to software development but also applies to the
finished product itself.

IDEs, Thunderbird and file managers do this, they hide information from the 
user and present a much simpler interface so people can do their work nearly 
instantly without having actually know what is going on. This is fine, until it
is not. If you want to understand the system, know its limitations and
capabilities, or even to get something slightly more complex done, you have to
know how it works. Build systems can be hidden, someone has to know how they
work, How the fetching and handling of Email works can also be hidden, but by
knowing how it works you can both diagnose what is wrong and come up with a
solution that is tailored to you.

* Simpler software

While the burden of knowledge that comes up with setting these things up is not
at times simple, the software itself is, which proves useful. It means it costs
less to maintain by the programmers and allows for small open source teams to
really shine. It means the software is more portable as there is less to port,
given enough time you could actually learn about how the internals work
yourself. It also allows for a different type of computing work environment.

Most of my tools are text or textual based which means the most complicated
library when it comes to display is usually ncurses. The exceptions to this
currently (given I am not using Thunderbird anymore) are Firefox and Skype
(something I *do* want to get rid of soon, but my situation will not allow it at
the moment). If it was not for these two applications I could do away with using
a GUI altogether, but even so it is paying dividends; my system is much leaner
as a whole then it would be otherwise. 

* Complex only once

While they can be a pain to set up, you only really have to do it once, it is
not a continual bother. I may find something that makes my setup even better, I
can add that in, but apart from that it is generally complex only once. You set
things up and they work without hassle as would your more user friendly
applications.

* Customizable

The applications tend to be customizable to an extent that no other is. Key
bindings, formats, how data is moved around, macros and even full blown
languages abound everywhere with these seemingly primitive systems. You have the
power to script as you please and you are encouraged to do so, you can make
things *just right* to a degree which is not possible with other systems. Not
only that but things are stored in the almighty format, as **text**.

### Conclusion

Do what you think is best, I am not going to be evangelical about which tools
you use but just be aware that there are other options out there and despite
their seeming complexity and the frustration of using them initially - people
use them and are passionate about it.

[mutt]: https://en.wikipedia.org/wiki/Mutt_%28e-mail_client%29
[Text-based User Interface]: https://en.wikipedia.org/wiki/Text_user_interface
