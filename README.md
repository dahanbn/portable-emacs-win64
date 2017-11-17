# portable-emacs-win64

Repository to speed up my use of a portable Emacs version with tools under Windows 64 bit. All tools and binaries are for 64bit versions - if available.

## content

It contains the following tools and batch files:

+ tools
    * [MultiMarkdown 6.2.2](http://fletcherpenney.net/multimarkdown/), licensed under MIT license
    * [pandoc 2.0.2](https://pandoc.org/), licensed under the GPL
    * [PortableGit 2.15.0](https://git-scm.com/download/win), licensed under the GPL v2
    * [putty 0.70](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html), licensed under the MIT license
    * [WinSCP 5.11.2](https://winscp.net/eng/download.php), licensed under GPL v3
+ fonts-for-local-install
    * [CamingoCode, v1.0](http://www.janfromm.de/typefaces/camingomono/camingocode/), licensed under Creative Commons License CC BY-ND, Version 3.0
    * [IBM Plex Family](https://github.com/IBM/type), licensed under SIL OPEN FONT LICENSE Version 1.1
        * [IBM Plex Mono, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Mono/desktop/pc), light, regular & semibold plus italics
        * [IBM Plex Sans, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Sans/desktop/pc), light, regular & semibold plus italics
        * [IBM Plex Serif, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Serif/desktop/pc), light, regular & semibold plus italics
+ portable-emacs-win64.bat, licensed under GPL v3

## following additional content is needed

+ [my .emacs.d - directory](https://github.com/dahanbn/.emacs.d), licensed under GPL v3
+ [latest stable Emacs](https://www.gnu.org/software/emacs/), currently emacs-25.3_1-x86_64, licensed under the GPL

## How to get it

First clone the portable-emacs-win64 repository:

    git clone https://github.com/dahanbn/portable-emacs-win64.git

Than go into the directory and clone the [.emacs.d repository](https://github.com/dahanbn/.emacs.d):

    git clone https://github.com/dahanbn/.emacs.d.git

Than download the latest stable emacs (emacs-25.3_1-x86_64) from http://ftp.gnu.org/gnu/emacs/windows/ and unzip it to the directory `emacs-25.3_1-x86_64`.

That's all.