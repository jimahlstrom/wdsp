# Linux port of the WDSP library

WDSP is a full‐featured signal processing library for Software Defined Radio.

For change logs see the WDSP Guide documentation provided with each release.

GNU General Public License (GPL) applies to this software (see license file).

Copyright © 2016 ‐ 2023, Warren C. Pratt, NR0V

The most recent versions of wdsp are from TAPR at https://github.com/TAPR/OpenHPSDR-wdsp. Unfortunately they are for Windows only.
 
John Melton, g0orx/n6lyt, did a Linux port. See https://github.com/g0orx/wdsp. Christoph, DL1YCF, added some improvements. See https://github.com/dl1ycf/pihpsdr. This repo is based on their work, and is provided as a convenience.

First, make sure that the fftw3 library and include files are installed. Then clone this repo, change to the wdsp directory and enter "make". That will build the static library libwdsp.a and the shared library libwdsp.so. There is a "clean" target but no "install" target. You can change to the "build_" directories and enter "make" to make just the static or shared library.

Jim Ahlstrom
N2ADR
 
