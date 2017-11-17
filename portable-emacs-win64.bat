set DH_EMACS_PORTABLE_DIR=%CD%
set HOME=%CD%
REM if not portable HOME should be set to the correct path
REM set HOME=%USERPROFILE%

set DH_TOOLSDIR=%CD%\tools
set GITDIR=%DH_TOOLSDIR%\PortableGit2.15.0
set PATH=%GITDIR%\cmd;%DH_TOOLSDIR%\MultiMarkdown-Windows-6.2.2;%DH_TOOLSDIR%\pandoc-2.0.2;%DH_TOOLSDIR%\putty-0.70;%DH_TOOLSDIR%\WinSCP-5.11.2;%PATH%
REM "emacs-25.3_1-x86_64/bin/runemacs.exe" --debug-init %*
"emacs-25.3_1-x86_64/bin/runemacs.exe" %*
