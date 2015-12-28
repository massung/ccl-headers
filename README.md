# ClozureCL Interface Directories

It took me a little bit to figure out how to properly create [interface directories](http://ccl.clozure.com/docs/ccl.html#creating-new-interface-directories) using [FFIGEN](http://www.ccs.neu.edu/home/lth/ffigen). But, now that I have a nice setup to do so, as I generate the CDBs for each of the libraries I end up using the most, I'll make them available here.

I've build both the 32- and 64-bit versions of each library.

Packages here so far...

* [Chipmunk2D](https://github.com/slembcke/Chipmunk2D)
* [Freetype2](http://www.freetype.org/)
* [GLFW3](http://www.glfw.org/)
* [GTK+3](https://developer.gnome.org/gtk3/stable/)
* [NCurses](https://www.gnu.org/software/ncurses/)
* [OpenSSL](https://www.openssl.org/)
* [SDL2](https://www.libsdl.org/index.php)
* [SQLite3](https://sqlite.org/)

## Quickstart

First, Clone this repo somewhere. I like ~/ccl-headers myself.

    [~] $ git clone http://github.com/massung/ccl-headers.git

Next, add symbolic links or copy each folder into the appropriate headers folder of your CCL installation path. For example, I simply have CCL checked out to `~/ccl`. Since I use 64-bit, I created symbolic links to each interface in the `~/ccl/x86-headers64` folder.

    [~/ccl/x86-headers64] $ ln -s ~/ccl-headers/x86_64/gtk3 .

Finally, launch CCL and things should "just work" (assuming you have the appropriate dynamic library installed for the package you're wanting to uses).

    $ lx86cl64
    Welcome to Clozure Common Lisp Version 1.10-r16196  (LinuxX8664)!

    CCL is developed and maintained by Clozure Associates. For more information
    about CCL visit http://ccl.clozure.com.  To enquire about Clozure's Common Lisp
    consulting services e-mail info@clozure.com or visit http://www.clozure.com.

    ? (use-interface-dir :gtk3)
    #<INTERFACE-DIR :GTK3 #P"gtk3/" #x302000FA993D>

    ? (open-shared-library "libgtk-3.so")
    #<SHLIB libgtk-3.so.0 #x302000FA811D>

    ? #_?gtk_init
    T
