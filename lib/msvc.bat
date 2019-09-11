@echo off

rem Get vswhere tool path.
set vswhere="%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"

rem Get vcvarsall script.
for /f "usebackq tokens=*" %%i in (`%vswhere% -latest -requires Microsoft.Component.MSBuild -find **\vcvars64.bat`) do (
  set vcvars64="%%i"
)

call %vcvars64%

mkdir msvc

lib /NOLOGO /def:libvlc.def /out:msvc\libvlc.lib /machine:x86
lib /NOLOGO /def:libvlc.def /out:msvc\libvlc.x64.lib /machine:x64

lib /NOLOGO /def:libvlccore.def /out:msvc\libvlccore.lib /machine:x86
lib /NOLOGO /def:libvlccore.def /out:msvc\libvlccore.x64.lib /machine:x64

pause
