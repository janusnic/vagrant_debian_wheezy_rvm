Why use Vagrant?
1.  Ruby on Rails is preinstalled on the Vagrant box.  The process of downloading and installing VirtualBox, 
Vagrant, and the Vagrant box takes minutes.  The process of installing Ruby on Rails on your host OS can take hours.
Vagrant enables you, your new colleague, your student at a RailsBridge workshop, or your teammate at Startup Weekend 
or a 24-hour Web Site Challenge to accomplish more in your project by saving much of the time needed to install Rails.
2.  Vagrant and VirtualBox are available for Linux, OS X, and Windows.  If developers on the same team are using 
different platforms, Vagrant makes it easy for them to standardize their development environments and minimize 
the difficulties of having different setups.  Furthermore, installing Ruby on Rails in Windows is very difficult, 
because very few Rails developers use Windows, and this makes it difficult to find help.
3.  You can have a fresh installation of Ruby on Rails available on demand at all times.  This enables you to make 
sure that your app's gemspec/Gemfile and instructions are complete without disrupting your work on other projects.
4.  The ability to save states in VirtualBox allows you to experiment and find answers to your "what if" questions 
WITHOUT destroying or disrupting your work on any of your projects.

Why do you insist on using Debian Stable instead of Debian Testing or Ubuntu as the basis for your Vagrant base box?
1.  Debian is lighter and faster than Ubuntu.
2.  Debian Stable is much easier to maintain and keep up-to-date than Debian Testing or Ubuntu.  A Debian Testing 
or Ubuntu installation requires much more frequent and substantial updates.  You will find that most of the Ubuntu 
base boxes with Ruby on Rails that are publicly available are out-of-date and require major updates.  In contrast, 
a Debian Stable installation requires only a few occasional and modest updates.

What process do you use to create your Vagrant base boxes?
I use a tool called Packer to create my Vagrant base boxes.  The source code I use for creating my Debian base boxes 
is publicly available at https://github.com/jhsu802701/packer-debian-wheezy-rvm .
