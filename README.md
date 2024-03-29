This is the CD-adapco CCM file I/O library, libccmio.

The library is built with qmake (www.trolltech.com), which is included in
this distribution.  The following platforms are supported, although other
platforms can likely be made to work with tweaks to the
config/<platform>/qmake.conf file:

	aix64_4.3-pwr3
	aix64_5.1-pwr4
	aix_4.3-com
	hpux64_11.00-pa8000
	hpux64_11.22-itanium2
	hpux_11.00-pa8000
	irix64_6.5-mips4
	irix_6.5-mips3
	linux64_2.4-itanium-glibc_2.2.4
	linux64_2.4-x86-glibc_2.2.5
	linux64_2.6-pwr4-glibc_2.3.3
	linux_2.2-x86-glibc_2.2.0
	linux_2.4-x86-glibc_2.3.2
	osf1_5.1-com
	sunos64_5.8-ultra
	sunos_5.8-ultra
	windows-x86-gcc
	windows-vc.net

The library can be built on Windows with either the Cygwin Unix emulation layer
(www.cygwin.com), MinGW (www.mingw.org), Win32 gcc using the
windows-x86-gcc profile, or with Visual Studio .NET using windows-vc.net.
Directions for VS .NET are given at the end of this file.

By default shared libraries in debug mode of the library will be compiled.
Other versions can be compiled by setting environment variables before
running make:  STATIC, SHARED, DEBUG, RELEASE

Binaries will be located in
lib/<platform>/<debug-shared|debug-static|release-shared|release-static>/
Only release-static is available on Windows.

Documentation is located in docs/html/index.html and can be regenerated
with `make docs`, assuming that doxygen >= 1.3.6 is in your path.
The file format itself is documented in docs/CCMFileFormat.pdf.

Sample CCM files are located in the data/ directory, including files from
older versions of the library that require special-case code to read with
newer versions (please see the "Backwards Compatibility" section of the
documentation for more details).  Note that .sff files are old CCM files.

ADF library:
This distribution includes a copy of the ADF library that has been modified
from the original code to greatly increase performance over NFS.  It should be
completely interchangeable with the official ADF library (available at
http://sourceforge.net/projects/cgns/).  If you wish to use the standard
distribution, simply copy the appropriate ADF files into the libadf/ directory
before building.

Compiling with VC.NET:
In order to compile with VC.NET, the VC.NET command line environment must
be properly set up (Microsoft includes a batch script for precisely this
purpose).  Specifically, nmake and devenv must be in your path.  Once your
environment is correctly set up, execute the following:

	cd libccmio-x.y.z
	set QTDIR=%CD%\config\windows-vc.net
	set QMAKESPEC=%QTDIR%
	set PATH=%QTDIR%;%PATH%
	nmake /f Makefile.win32
