ETCDIR := /etc
SCRIPTS_DIR := ${DESTDIR}${ETCDIR}
MODE := 754
DIRMODE := 755
CONFMODE := 644

install-scripts: create-dirs
	install -m ${MODE} rc.d/shutdown ${SCRIPTS_DIR}/rc.d/
	install -m ${MODE} rc.d/startup  ${SCRIPTS_DIR}/rc.d/
	install -m ${CONFMODE} rc.d/init.d/functions ${SCRIPTS_DIR}/rc.d/init.d/
	install -m ${MODE} rc.d/scripts/syslog.sh ${SCRIPTS_DIR}/rc.d/scripts/syslog.sh

all: install-scripts

create-dirs:
	install -dm ${DIRMODE} ${SCRIPTS_DIR}/rc.d/init.d
	install -dm ${DIRMODE} ${SCRIPTS_DIR}/rc.d/scripts

.PHONY: all install-scripts create-dirs
