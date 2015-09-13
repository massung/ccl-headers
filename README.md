# ClozureCL Interface Translator Files

It took me a little bit to figure out [FFIGEN](http://ccl.clozure.com/docs/ccl.html#overview_in_the-interface-translator), so as I generate the CDBs for each of the libraries I end up using the most, I'll make them available here.

I typically only build 64-bit, but I may get around to building 32-bit CDB files as well.

Packages here so far...

* GTK+3
* OpenSSL
* SQLite3

## Quickstart

To use these in ClozureCL for yourself:

1. Clone this repo somewhere. I like ~/ccl-headers myself.

    [~] $ git clone http://github.com/massung/ccl-headers.git

2. Add symlinks or copy each folder into the x86-headers64 folder of CCL.

    [~/ccl/x86-headers64] $ ln -s ~/ccl-headers/x86_64/gtk3 .

3. Launch CCL and things should "just work".

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
