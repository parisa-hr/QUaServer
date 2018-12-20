TEMPLATE = lib
CONFIG  += staticlib
CONFIG  -= app_bundle
CONFIG  -= qt

DESTDIR  = $$PWD/../build

CONFIG(debug, debug|release) {
	OBJECTS_DIR = $$DESTDIRdebug
	TARGET = open62541d
} else {
	OBJECTS_DIR = $$DESTDIR/release
	TARGET = open62541
}	

INCLUDEPATH += $$PWD

SOURCES += $$PWD/open62541.c