# portable-emacs-win64

Repository to speed up my use of a portable Emacs version with tools under Windows 64 bit. All tools and binaries are for 64bit versions - if available.

## How to get it?

First clone the portable-emacs-win64 repository, than go into the directory and 
clone the [.emacs.d repository](https://github.com/dahanbn/.emacs.d):

    git clone https://github.com/dahanbn/portable-emacs-win64.git
    cd portable-emacs-win64
    git clone https://github.com/dahanbn/.emacs.d.git

Than download the latest stable emacs (emacs-26.3-x86_64) from
http://ftp.gnu.org/gnu/emacs/windows/ and unzip it to the directory
`emacs-26.3-x86_64`.

That's all.

## How to update it?

Run `git-pull-emacs-emacs.d.bat` to pull updates & fast forward into it if git
is locally installed. The batch file also pulls new commits from the `.emacs.d`
repository and uses also git submodule there for other local-packages that are
git repositories itselfs, e.g. [lpy](https://github.com/abo-abo/lpy).

Currently it contains the following code:

    echo "Running git pull for portable-emacs-win64"
    git pull https://github.com/dahanbn/portable-emacs-win64.git
    
    pause
    
    cd .emacs.d
    echo "Running git pull for .emacs.d"
    git pull https://github.com/dahanbn/.emacs.d.git
    echo "Fetching submodules via git submodule"
    git submodule init
    git submodule update --remote
    
    pause

## What is included?

It contains the following tools and batch files:

For the versions of the different tools please see the tools directory. There is a txt file for each included version. 

**Attention!** Pandoc.exe is too big for Git to handle it. Therefore the portable pandoc must be [downloaded separately](https://github.com/jgm/pandoc/releases/latest) and the files extracted to `tools/pandoc/`. Or use the provided zip file in the directory.

+ tools
    * [pandoc 2.10.1 64bit](https://github.com/jgm/pandoc/releases/latest), licensed under the GPL
    * [MultiMarkdown 6.5.2 64bit](http://fletcherpenney.net/multimarkdown/download/),
      licensed under GPL v2 or greater
    * [ripgrep 12.1.1 64 bit](https://github.com/BurntSushi/ripgrep/releases), licensed under MIT or UNLICENSE (dual-licensed)
    * [Steel Bank Common Lisp (SBCL) 1.4.2](http://www.sbcl.org/platform-table.html), licensed under various licenses (SBCL is derived from CMU CL, and carries the same licensing terms, a mixture of BSD-style (for a few subsystems) and public domain (for the rest of the system).)
    * [Don't Sleep 7.22 64bit](http://softwareok.de/?seite=Microsoft/DontSleep), Freeware, please see it's [license](http://softwareok.de/?seite=Microsoft/DontSleep/Lizenz)
+ fonts-for-local-install
    * [CamingoCode, v1.0](http://www.janfromm.de/typefaces/camingomono/camingocode/), licensed under Creative Commons License CC BY-ND, Version 3.0
    * [IBM Plex Family](https://github.com/IBM/type), licensed under SIL OPEN FONT LICENSE Version 1.1
        * [IBM Plex Mono, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Mono/desktop/pc), light, regular & semibold plus italics
        * [IBM Plex Sans, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Sans/desktop/pc), light, regular & semibold plus italics
        * [IBM Plex Serif, v0.4.1](https://github.com/IBM/type/tree/master/fonts/Serif/desktop/pc), light, regular & semibold plus italics
    * [iA Duospace Fonts](https://github.com/iaolo/iA-Fonts), based on IBM Plex Mono and licensed under SIL OPEN FONT LICENSE Version 1.1
+ .gitconfig
+ git-pull-emacs-emacs.d.bat
+ portable-emacs-win64.bat, licensed under GPL v3

**Warning:** `.gitconfig` is needed because of the portable use of git, it needs
a copy of the file under the fake `$HOME`. You can read more
[here](https://github.com/magit/magit/issues/1497). Nevertheless you still have
to set up the real .gitconfig and the credential service, e.g.:

    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com
	
	# credential service will be setup on the first push

## What is additionally needed to get it to work?

+ [my .emacs.d - directory](https://github.com/dahanbn/.emacs.d), licensed under GPL v3
+ [latest stable Emacs](https://www.gnu.org/software/emacs/), currently emacs-25.3_1-x86_64, licensed under the GPL

## Next benefit: synching of pandoc, multimarkdown, ...

Another benefit of this repository is the synching of various portable apps to different machines, e.g. git, pandoc & markdown.

To make it user wide accessible on the different machines outside of Emacs it is recommended to add the path to those application directories to the user environment path variable.

    D:\portable-emacs-win64\tools\pandoc;D:\portable-emacs-win64\tools\PortableGit\cmd;D:\portable-emacs-win64\tools\putty;D:\portable-emacs-win64\tools\WinSCP;D:\portable-emacs-win64\tools\MultiMarkdown\bin;

On Windows 10 with a Microsoft User Account you find the dialog to set it up under `Systemsteuerung\Benutzerkonten\Benutzerkonten` => `Eigene Umgebungsvariablen bearbeiten`.
