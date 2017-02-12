#What are some of the key design philosophies of the Linux operating system?

*From [link](https://en.wikipedia.org/wiki/Unix_philosophy#Origin)*

##Write programs that do one thing and do it well.

Building a program with a clearly defined goal is easier to maintain in the long run.  Rather than implementing a new feature in a program, if it would be better off as its own program, make it so.  Also, if care is taken to write code that is easier to understand, it becomes that much easier for a new developer to get involved.

##Write programs to work together.

Since your programs need to do only one thing, you will need more programs to manipulate your data further in their own way. 


##Write programs to handle text streams, because that is a universal interface.

Since your programs are written to speak to humans before computers, a text based IO stream is the easiest way for a program to communicate with a human.  Using a standard text interface also makes it easier for programs to communicate with each other.


#In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

Computers are strong enough today to be able to easily emulate a lot of smaller computers at the same time.  A VPS is one of those smaller computers.  It usually makes more economic sense to rent a VPS instead of buying a new computer.  A small server on AWS only costs a few dollars per month, and they come preconfigured with operating systems and utilities installed.


#Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

The root user can do anything it wants.  If a program has a glitch that would change any system files, it goes right ahead and does that.  If your computer is telling you it needs root permissions, it's another way of asking if you're absolutely sure you want to do what you're trying to do.

The root user has its own distinct environment, so its environment variables will be different.  For example, on this account, the directory ~/ resolves to /home/paulito.  For root, it would resolve to /home/root.  