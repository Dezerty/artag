#############################################################################
# Makefile for building: artoolkitplus
# Generated by qmake (1.07a) (Qt 3.3.4) on: Thu Apr 20 13:49:08 2006
# Project:  artoolkitplus.pro
# Template: subdirs
# Command: $(QMAKE) -o Makefile artoolkitplus.pro
#############################################################################

MAKEFILE =	Makefile
QMAKE    =	qmake
DEL_FILE =    rm -f
CHK_DIR_EXISTS= test -d
MKDIR    = mkdir -p
INSTALL_FILE= 
INSTALL_DIR = 
SUBTARGETS =	 \
		sub-src \
		sub-sample \
		sub-tools

first: all

all: Makefile $(SUBTARGETS)

src/$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) "src" || $(MKDIR) "src"
	cd src && $(QMAKE) src.pro -o $(MAKEFILE)
sub-src: src/$(MAKEFILE) FORCE
	cd src && $(MAKE) -f $(MAKEFILE)

sample/$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) "sample" || $(MKDIR) "sample"
	cd sample && $(QMAKE) sample.pro -o $(MAKEFILE)
sub-sample: sample/$(MAKEFILE) FORCE
	cd sample && $(MAKE) -f $(MAKEFILE)

tools/$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) "tools" || $(MKDIR) "tools"
	cd tools && $(QMAKE) tools.pro -o $(MAKEFILE)
sub-tools: tools/$(MAKEFILE) FORCE
	cd tools && $(MAKE) -f $(MAKEFILE)

Makefile: artoolkitplus.pro  /usr/lib/qt3/mkspecs/default/qmake.conf 
	$(QMAKE) -o Makefile artoolkitplus.pro
qmake: qmake_all
	@$(QMAKE) -o Makefile artoolkitplus.pro

all: $(SUBTARGETS)
qmake_all: src/$(MAKEFILE) sample/$(MAKEFILE) tools/$(MAKEFILE)
	 ( [ -d src ] && cd src ; grep "^qmake_all:" $(MAKEFILE) && $(MAKE) -f $(MAKEFILE) qmake_all; ) || true
	 ( [ -d sample ] && cd sample ; grep "^qmake_all:" $(MAKEFILE) && $(MAKE) -f $(MAKEFILE) qmake_all; ) || true
	 ( [ -d tools ] && cd tools ; grep "^qmake_all:" $(MAKEFILE) && $(MAKE) -f $(MAKEFILE) qmake_all; ) || true
clean uicables mocables uiclean mocclean lexclean yaccclean : qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) $@; ) || true
	 ( [ -d sample ] && cd sample ; $(MAKE) -f $(MAKEFILE) $@; ) || true
	 ( [ -d tools ] && cd tools ; $(MAKE) -f $(MAKEFILE) $@; ) || true
uninstall_subdirs: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) uninstall; ) || true
	 ( [ -d sample ] && cd sample ; $(MAKE) -f $(MAKEFILE) uninstall; ) || true
	 ( [ -d tools ] && cd tools ; $(MAKE) -f $(MAKEFILE) uninstall; ) || true
install_subdirs: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) install; ) || true
	 ( [ -d sample ] && cd sample ; $(MAKE) -f $(MAKEFILE) install; ) || true
	 ( [ -d tools ] && cd tools ; $(MAKE) -f $(MAKEFILE) install; ) || true
distclean: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) $@; $(DEL_FILE) $(MAKEFILE); ) || true
	 ( [ -d sample ] && cd sample ; $(MAKE) -f $(MAKEFILE) $@; $(DEL_FILE) $(MAKEFILE); ) || true
	 ( [ -d tools ] && cd tools ; $(MAKE) -f $(MAKEFILE) $@; $(DEL_FILE) $(MAKEFILE); ) || true

install:  install_subdirs

uninstall:  uninstall_subdirs

FORCE:
