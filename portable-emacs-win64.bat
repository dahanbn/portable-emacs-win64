REM additional documentation
REM ++++++++++++++++++++++++
REM it might be useful to add the following paths to the system path for the current user,
REM even outside from Emacs
REM D:\portable-emacs-win64\tools\pandoc;D:\portable-emacs-win64\tools\PortableGit\cmd;D:\portable-emacs-win64\tools\putty;D:\portable-emacs-win64\tools\WinSCP;D:\portable-emacs-win64\tools\MultiMarkdown\bin


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
set PATH=%SBCL_HOME%;%GITDIR%\cmd;%DH_TOOLSDIR%\pandoc;%DH_TOOLSDIR%\putty;%DH_TOOLSDIR%\WinSCP;%DH_TOOLSDIR%\MultiMarkdown\bin;%PATH%
REM "emacs-25.3_1-x86_64/bin/runemacs.exe" --debug-init %*
"emacs-26.1-x86_64/bin/runemacs.exe" %*


