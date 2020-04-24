CONFIG += c++11

LIBS += -lLinkNDI


LIBS+=-L$$CROSS/expat/lib -lexpat
LIBS+=-L$$CROSS/dbus/lib -ldbus-1
LIBS+=-L$$CROSS/daemon/lib -ldaemon
LIBS+=-L$$CROSS/avahi/lib -lavahi-common -lavahi-client
LIBS+=-L$$CROSS/NDI/lib -lndi

contains(DEFINES,HI3531DV200){
LIBS+=-lssp
}
