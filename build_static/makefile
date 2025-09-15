#
# Makefile for WDSP library
# This one creates libwdsp.a intended for static linking
#

LIBS=-lfftw3 -lpthread
CC=gcc
CFLAGS= -pthread -O3 -D_GNU_SOURCE -Wno-parentheses

vpath %.c ../src
vpath %.h ../src

OBJS=\
amd.o\
ammod.o\
amsq.o\
analyzer.o\
anf.o\
anr.o\
bandpass.o\
calcc.o\
calculus.o\
cblock.o\
cfcomp.o\
cfir.o\
channel.o\
compress.o\
delay.o\
dexp.o\
div.o\
eer.o\
emnr.o\
emph.o\
eq.o\
fcurve.o\
fir.o\
firmin.o\
fmd.o\
fmmod.o\
fmsq.o\
gain.o\
gen.o\
icfir.o\
iir.o\
iobuffs.o\
iqc.o\
linux_port.o\
lmath.o\
main.o\
meter.o\
meterlog10.o\
nbp.o\
nob.o\
nobII.o\
osctrl.o\
patchpanel.o\
resample.o\
rmatch.o\
RXA.o\
sender.o\
shift.o\
siphon.o\
slew.o\
snb.o\
ssql.o \
syncbuffs.o\
TXA.o\
utilities.o\
varsamp.o\
version.o\
wcpAGC.o\
wisdom.o\
zetahat.o

libwdsp.a:	$(OBJS)
	ar rv ../libwdsp.a $(OBJS)
	ranlib ../libwdsp.a

# Define the location for dependency files
DEPDIR = deps
DEPS = $(OBJS:.o=$(DEPDIR)/%.d)
DEPFLAGS = -MMD -MP -MF $(DEPDIR)/$*.d
$(DEPDIR):
	@mkdir -p $(DEPDIR)
-include $(DEPS)

%.o: %.c | $(DEPDIR)
	$(CC) $(CFLAGS) $(DEPFLAGS) -c $< -o $@

.PHONY: clean
clean:
	-rm -rf ../libwdsp.a *.o $(DEPDIR)
