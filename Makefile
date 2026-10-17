UFBT ?= ufbt

.PHONY: build install standard clean unleashed

# Uses the SDK selected by UFBT_HOME. uFBT exports dist/air_stats.fap.
build:
	$(UFBT)

install: build
	$(UFBT) launch

# Build for Unleashed firmware (legacy)
unleashed:
	@bash tools/build.sh

# Build for standard Flipper firmware
standard:
	@bash tools/build.sh -f standard

clean:
	@rm -f dist/*.fap
