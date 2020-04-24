LINK=$$PWD
INCLUDEPATH += $$LINK/include

if(!isEmpty(SDKVER)){
    LIBS+=-L$$LINK/$$chip/lib_$$SDKVER
}
else {
    LIBS+=-L$$LINK/$$chip/lib
}

LIBS+=-lLinkBase -lLinkCodec -lLinkIO -lLinkStream -lLinkProcess

include($$PWD/LinkChip.pri)

QMAKE_RPATHDIR += $$CROSS/voaac/lib
LIBS+=  -L$$CROSS/ffmpeg/lib \
        -lavfilter -lavdevice -lavformat -lavcodec \
        -lavutil  -lswresample

LIBS+=  $$CROSS/fdkaac/lib/libfdk-aac.a
LIBS+=  $$CROSS/lame/lib/libmp3lame.a


QT += network serialport
QMAKE_RPATHDIR += $$CROSS/lame/lib
