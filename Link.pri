LINK=$$PWD
INCLUDEPATH += $$LINK/include

LIBS+=-L$$LINK/$$chip/lib
LIBS+=-lLinkBase -lLinkIO -lLinkCodec -lLinkProcess -lLinkStream -lLinkUI

include($$PWD/LinkChip.pri)

LIBS+=  $$CROSS/fdkaac/lib/libfdk-aac.a


LIBS+=  -L$$CROSS/ffmpeg/lib \
        -lavfilter -lavdevice -lavformat -lavcodec \
        -lavutil  -lswresample


QT += network
