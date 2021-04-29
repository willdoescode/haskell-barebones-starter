GHC = ghc
TARGETS := $(wildcard *.hs)
MAIN = Main
GFLAGS =

ifeq ($(OS), Windows_NT)
	GFLAGS += " "
else
	GFLAGS += "-L/usr/lib"
endif

.PHONY: all
all: $(MAIN)

$(MAIN): $(TARGETS)
	$(GHC) $(GFLAGS) -o main $(TARGETS)
