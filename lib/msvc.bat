@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

mkdir msvc

lib /NOLOGO /def:libvlc.def /out:msvc\libvlc.lib /machine:x86
lib /NOLOGO /def:libvlc.def /out:msvc\libvlc.x64.lib /machine:x64

lib /NOLOGO /def:libvlccore.def /out:msvc\libvlccore.lib /machine:x86
lib /NOLOGO /def:libvlccore.def /out:msvc\libvlccore.x64.lib /machine:x64

pause
