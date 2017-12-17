# portable-emacs-win64

Repository to speed up my use of a portable Emacs version with tools under Windows 64 bit. All tools and binaries are for 64bit versions - if available.

## How to get it?

First clone the portable-emacs-win64 repository, han go into the directory and 
clone the [.emacs.d repository](https://github.com/dahanbn/.emacs.d):

    git clone https://github.com/dahanbn/portable-emacs-win64.git
    cd portable-emacs-win64
    git clone https://github.com/dahanbn/.emacs.d.git

Than download the latest stable emacs (emacs-25.3_1-x86_64) from http://ftp.gnu.org/gnu/emacs/windows/ and unzip it to the directory `emacs-25.3_1-x86_64`.

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

+ tools
    * [pandoc 2.0.5](https://pandoc.org/), licensed under the GPL
    * [PortableGit 2.15.1.2](https://git-scm.com/download/win), licensed under the GPL v2
    * [putty 0.70](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html), licensed under the MIT license
    * [WinSCP 5.11.2](https://winscp.net/eng/download.php), licensed
      under GPL v3
    *
      [http://fletcherpenney.net/multimarkdown/download/](https://github.com/dahanbn/.emacs.d
      "MultiMarkdown 6.2.3"), licensed under GPL v2 or greater
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
