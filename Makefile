.PHONY: all
.PHONY: clean

all: windows ds gamecube 3ds linux psp PS4

.PHONY: windows
windows:
	$(MAKE) -f Makefile.win

.PHONY: ds
ds:
	$(MAKE) -f Makefile.ds

.PHONY: gamecube
gamecube:
	$(MAKE) -f Makefile.gc

.PHONY: 3ds
3ds:
	$(MAKE) -f Makefile.3d

.PHONY: linux
linux:
	$(MAKE) -f Makefile.lin

.PHONY: osx
osx:
	$(MAKE) -f Makefile.osx

.PHONY: psp
psp:
	$(MAKE) -f Makefile.psp

PS4:
	$(MAKE) -f Makefile.ps4

clean:
	$(RM) wbuild/*
	$(RM) dbuild/*
	$(RM) gbuild/*
	$(RM) 3build/*
	$(RM) lbuild/*
	$(RM) xbuild/*
	$(RM) cinoop.elf
	$(RM) cinoopstripped.elf
	$(RM) cinoop.nds
	$(RM) cinoop.dol
	$(RM) cinoop.3ds
	$(RM) cinoop.3dsx
	$(RM) cinoop.cia
	$(RM) cinoop.smdh
	$(RM) cinoop.exe
	$(RM) cinoop
	$(RM) PARAM.SFO
	$(RM) EBOOT.PBP
	$(RM) cinoop.bin
	$(RM) -r wbuild
	$(RM) -r dbuild
	$(RM) -r gbuild
	$(RM) -r 3build
	$(RM) -r lbuild
	$(RM) -r xbuild
