## 2013-06-11 bloat.md

## Bloat

I feel that it is an unfortunate facet of modern software that there is bloat in
absolutely everything, so much that I have to spend a lot of time avoiding it. I
understand the need for large complicated programs *where there is a need for
them* but most of the time there is not yet things grow and grow.

### Websites.

Websites do this a lot. I see many websites, a lot of blogs in usually, that
while serving what should be completely static content uses extensive use of
Javascript, sometimes so much so that it will not load without it. 

I know why sites like YouTube do what they do, having their own video player and
a loose control on the content (which while trivial to circumvent is still
beyond most people). I would much prefer a small PNG and a little text along
with a link to the video *file* so I can download and play the video how I
like. Video players play video, they do it well, web browsers browse the web,
they often do not do it well. 

I know designing a web browser is not an easy task, but it is almost as if they
are operating systems in their own right, they were never designed to be that.
They have ended up supporting a huge array of technologies and standards and are
now at the apex of bloat. Their corpulent bodies leaking memory and reaching for
more cycles. I do not care that you can now play Doom at two frames per second
entirely in Javascript on your million core supercomputer, it was never designed
for that nor should it be used for it. That my browser is even capable of this
shows that something is wrong here.

I feel it is not the browsers that cause most of the problem but the website, it
takes sometimes more than five seconds to render certain web pages on my
netbook, which while it is woefully underpowered it entirely irrelevant, while
the site is rendering it locks the browser up. It is only a select few blog
sites that do this. 

Sometimes sites feel the need to load their own fonts, run their own scripts,
very few even their own flash plugins, all this can weigh in over a megabyte,
and all in order to display a few kilobytes of text. It is ridiculous that this
happening at all.

I have to use a myriad of plugins for my browser just so I can make other
peoples content usable; Noscript, Adblockers, Ghostery. 

I have avoided saying which sites do what (apart from YouTube which my main
gripe is held in common with all video sharing site), which browser I am using 
and anything like that so as not to offend. 

I have linked to this site in another post as well, I think it makes my point,
it is about webdesign and focusing on the [content][]. 

### Software

As I have already said, web browsers pose as one of my main concerns. I do not
like the fact that I have to install a few gigabytes of software (which
is now a *minimalist* system nowadays) in order to get a usable environment. I
believe I get most of my usability probably in the first few hundred megabytes
of that; Vim, GCC, dwm+X11, the kernel, tmux, git...what is the rest doing? Well
I have a roughly 900MB installation of the texlive, the core is actually very
small (in comparison the texlive package for Tinycore Linux is 20MB, it works),
and just checking now 600MB of that is in *fonts* alone (or what is presumably
fonts being in a directory called /usr/share/texmf-dist/fonts). People think
that just because hard disk space is cheap there is no additional costs
involved, there is additional costs involving the maintenance of all those
files, there are the systems where it cannot be installed due to how big it is.
Perhaps I want to have a portable Linux distro on my USB or an SD card? Not
without taking up a few GBs of a small 16GB drive, a massive waste.

### Formats

It is unfortunate that every single company has to make their own format in
order to lock-in customers, two culprits that are obvious are disk ripping and
burning software, they all have their own formats for their own disk images when
an ISO would do, and word processing software, likewise many formats all to do
the same thing.

Video and audio is different, there may be many formats, proprietary ones, but
they *are* getting better and it is easy to notice that fact. You can measure
their performance numerically although there will come a time when you can not
squeeze out any more entropy from the source and hopefully we will standardize
on only a few formats. 

[content]: http://justinjackson.ca/words.html "This is a web page by Justin Jackson"
