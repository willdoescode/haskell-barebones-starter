GHC = ghc
TARGETS := $(wildcard *.hs)
MAIN = Main
GFLAGS = -L/usr/lib

.PHONY: all
all: $(MAIN)

$(MAIN): $(TARGETS)
	$(GHC) $(GFLAGS) -o main $(TARGETS)
