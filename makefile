#
# This makes both the shared and static WDSP libraries.
#

.PHONY: all

all:
	$(MAKE) --directory=build_shared
	$(MAKE) --directory=build_static

.PHONY: clean

clean:
	$(MAKE) clean --directory=build_shared
	$(MAKE) clean --directory=build_static
