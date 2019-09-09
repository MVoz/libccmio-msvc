rem Copy source files modified for producing windows dlls to the appropriate
rem directories.

pushd %~dp0

copy /y adf\ADF.h ..\libadf > nul
copy /y ccmio\ccmio.h ..\libccmio > nul
copy /y ccmio\ccmio.c ..\libccmio > nul

popd
