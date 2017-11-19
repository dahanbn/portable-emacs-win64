set DH_EMACS_PORTABLE_DIR=%CD%

REM use local installed git

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
