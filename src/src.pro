#-------------------------------------------------
#
# Project created by QtCreator 2010-07-27T23:20:48
#
#-------------------------------------------------

QT       += network

TARGET = groove
TEMPLATE = lib
INCLUDEPATH = ../include/
DEPENDPATH = ../include/

include(../libqjson.pri)

DEFINES += LIBGROOVE_LIBRARY

SOURCES += grooveclient.cpp \
    groovesong.cpp \
    groovesearchmodel.cpp \
    grooveclient_p.cpp \
    grooveplaylistmodel.cpp \
    groovesongsmodel.cpp \
    grooverequest.cpp \
    groovestream.cpp \
    groovestream_p.cpp

HEADERS += grooveclient.h\
        libgroove_global.h \
    groovesong.h \
    groovesearchmodel.h \
    grooveclient_p.h \
    grooveplaylistmodel.h \
    groovesongsmodel.h \
    grooverequest.h \
    groovestream.h \
    groovestream_p.h

headers.files = $$HEADERS
headers.path = $$INSTALL_PREFIX/include
INSTALLS += headers

target.path = $$INSTALL_PREFIX/lib
INSTALLS += target

unix {
    CONFIG += create_pc create_prl
    pkgconfig.files = $${OUT_PWD}/$${TARGET}.pc
    pkgconfig.path = /usr/lib/pkgconfig
    INSTALLS += pkgconfig
}
