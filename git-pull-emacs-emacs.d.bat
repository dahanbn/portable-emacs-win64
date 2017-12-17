set DH_EMACS_PORTABLE_DIR=%CD%
set HOME=%CD%
REM if not portable HOME should be set to the correct path
REM set HOME=%USERPROFILE%

SET APPDATA=%CD%\AppData
SET LOCALAPPDATA=%CD%\AppData\Local
set DH_TOOLSDIR=%CD%\tools
set SBCL=%DH_TOOLSDIR%\sbcl
set SBCL_HOME=%SBCL%
set GITDIR=%DH_TOOLSDIR%\PortableGit
set PATH=%SBCL_HOME%;%GITDIR%\cmd;%DH_TOOLSDIR%\pandoc;%DH_TOOLSDIR%\putty;%DH_TOOLSDIR%\WinSCP;%PATH%

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
