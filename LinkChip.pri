DEFINES += $$chip
isEmpty(HOME){
    HOME=/home/zc
}

contains(DEFINES,HI3521D){
message("CHIP:HI3521D")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v500
}
isEmpty(MPP){
    MPP=$$HOME/3521D/SDK/Hi3521DV100_SDK_V1.0.5.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libjpeg6b.a \
        $$MPP/lib/libmd.a  $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -L$$CROSS/alsa-lib/lib -lasound
}
}

contains(DEFINES,HI3519A){
message("CHIP:HI3519A")
isEmpty(CROSS){
    CROSS=$$HOME/cross/mix200
}
isEmpty(MPP){
    MPP=$$HOME/3519A/SDK/Hi3519AV100_SDK_V2.0.2.0/smp/a53_linux/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
INCLUDEPATH += $$CROSS/alsa/include
if(!contains(DEFINES,LINK_LIBRARY)){
DEFINES += ISP_V2
QMAKE_RPATHDIR += $$MPP/lib
LIBS += -lpthread -lm -ldl -lstdc++ \
        -L$$MPP/lib  $$MPP/lib/libmpi.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libhi_cipher.a \
        $$MPP/lib/libdpu_rect.a  $$MPP/lib/libdpu_match.a $$MPP/lib/libhiavslut.a $$MPP/lib/libpos_query.a \
        $$MPP/lib/libisp.a  $$MPP/lib/lib_hidehaze.a $$MPP/lib/lib_hidrc.a \
        $$MPP/lib/lib_hildci.a  $$MPP/lib/lib_hiae.a $$MPP/lib/lib_hiawb.a  \
        $$MPP/lib/libVoiceEngine.a $$MPP/lib/libdnvqe.a  $$MPP/lib/libupvqe.a  $$MPP/lib/libaacenc.a $$MPP/lib/libaacdec.a \
        $$MPP/lib/libsns_imx334.a $$MPP/lib/libsns_imx290.a\
        -lnnie \
        -ldpu_rect -ldpu_match \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -lhive_common  -lhive_HPF  -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC -lsecurec \
        -L$$CROSS/alsa-lib/lib -lasound

}
}

contains(DEFINES,HI3516E){
message("CHIP:HI3516E")
isEmpty(CROSS){
    CROSS=$$HOME/cross/mix100
}
isEmpty(MPP){
    MPP=$$HOME/3516E/SDK/Hi3516EV200_SDK_V1.0.1.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
DEFINES += ISP_V2
QMAKE_RPATHDIR += $$MPP/lib
LIBS += -lpthread -lm -ldl -lstdc++ \
        -L$$MPP/lib  $$MPP/lib/libmpi.a   $$MPP/lib/libhi_cipher.a \
        $$MPP/lib/libisp.a  $$MPP/lib/lib_hidehaze.a $$MPP/lib/lib_hidrc.a \
        $$MPP/lib/lib_hildci.a  $$MPP/lib/lib_hiae.a $$MPP/lib/lib_hiawb.a  \
        $$MPP/lib/libVoiceEngine.a $$MPP/lib/libdnvqe.a  $$MPP/lib/libupvqe.a   \
        $$MPP/lib/libsns_imx335.a \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -lhive_common  -lhive_HPF  -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC -lsecurec \
        -live -lmd
        #-L$$CROSS/alsa/lib -lasound

}
}

contains(DEFINES,HI3559A){
message("CHIP:HI3559A")
isEmpty(CROSS){
    CROSS=$$HOME/cross/mix100_64
}
isEmpty(MPP){
    if(!isEmpty(SDKVER)){
        equals(SDKVER,"V2.0.3.0") {
            MPP=$$HOME/3559A/SDK/Hi3559AV100_SDK_V2.0.3.0/mpp/out/linux/multi-core
        }

        equals(SDKVER,"V2.0.2.0") {
            MPP=$$HOME/3559A/SDK/Hi3559AV100_SDK_V2.0.2.0/mpp/out/linux/multi-core
        }
    }else{
        MPP=$$HOME/3559A/SDK/Hi3559AV100_SDK_V2.0.2.0/mpp/out/linux/multi-core
    }

}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
INCLUDEPATH += $$CROSS/alsa/include
if(!contains(DEFINES,LINK_LIBRARY)){
DEFINES += ISP_V2
QMAKE_RPATHDIR += $$MPP/lib
LIBS += -lpthread -lm -ldl -lstdc++ \
        -L$$MPP/lib  $$MPP/lib/libmpi.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libhi_cipher.a \
        $$MPP/lib/libdpu_rect.a  $$MPP/lib/libdpu_match.a $$MPP/lib/libhiavslut.a $$MPP/lib/libpos_query.a \
        $$MPP/lib/libisp.a  $$MPP/lib/lib_hidehaze.a $$MPP/lib/lib_hidrc.a \
        $$MPP/lib/lib_hildci.a  $$MPP/lib/lib_hiae.a $$MPP/lib/lib_hiawb.a  \
        $$MPP/lib/libVoiceEngine.a $$MPP/lib/libdnvqe.a  $$MPP/lib/libupvqe.a  $$MPP/lib/libaacenc.a $$MPP/lib/libaacdec.a \
        -lhive_common  -lhive_HPF  -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC -lsecurec \
        -L$$CROSS/alsa-lib/lib -lasound

}
}

contains(DEFINES,HI3531A){
message("CHIP:HI3531A")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v300
}
isEmpty(MPP){
    MPP=$$HOME/3531A/SDK/Hi3531A_SDK_V1.0.4.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS +=  $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libjpeg6b.a \
        $$MPP/lib/libmd.a $$MPP/lib/libpciv.a $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl
}
}

contains(DEFINES,HI3521A){
message("CHIP:HI3521A")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v300
}
isEmpty(MPP){
    MPP=$$HOME/3521A/SDK/Hi3521A_SDK_V1.0.5.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libjpeg6b.a \
        $$MPP/lib/libmd.a $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl
}
}

contains(DEFINES,HI3531D){
message("CHIP:HI3531D")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v500
}
isEmpty(MPP){
    if(!isEmpty(SDKVER)){
        equals(SDKVER,"V1.0.5.0") {
            MPP=$$HOME/3531D/SDK/Hi3531DV100_SDK_V1.0.5.0/mpp
        }

        equals(SDKVER,"V1.0.3.0") {
            MPP=$$HOME/3531D/SDK/Hi3531DV100_SDK_V1.0.3.0/mpp
        }
    }else{
        MPP=$$HOME/3531D/SDK/Hi3531D_SDK_V1.0.3.0/mpp
    }
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libjpeg6b.a \
        $$MPP/lib/libmd.a $$MPP/lib/libpciv.a $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -L$$CROSS/alsa-lib/lib -lasound
}
}

contains(DEFINES,HI3531DV200){
message("CHIP:HI3531DV200")
    DEFINES += LINK_MPP_V5
    DEFINES += LINK_TYPE_XVR
isEmpty(CROSS){
    CROSS=$$HOME/cross/mix200_64
}
isEmpty(MPP){
    if(!isEmpty(SDKVER)){
        equals(SDKVER,"V2.0.0.1") {
            MPP=$$HOME/3531DV200/SDK/Hi3531DV200_SDK_V2.0.0.3/mpp
        }
    }else{
        MPP=$$HOME/3531DV200/SDK/Hi3531DV200_SDK_V2.0.0.3/mpp
    }
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libhdmi.a  $$MPP/lib/libVoiceEngine.a $$MPP/lib/libupvqe.a $$MPP/lib/libdnvqe.a $$MPP/lib/libaaccomm.a $$MPP/lib/libaacenc.a $$MPP/lib/libaacdec.a $$MPP/lib/libaacsbrenc.a $$MPP/lib/libaacsbrdec.a $$MPP/lib/libhive_RES.a $$MPP/lib/libhive_record.a $$MPP/lib/libhive_HPF.a $$MPP/lib/libhive_ANR.a $$MPP/lib/libhive_AEC.a $$MPP/lib/libhive_AGC.a $$MPP/lib/libhive_EQ.a $$MPP/lib/libaacdec.a $$MPP/lib/libaacenc.a $$MPP/lib/libaaccomm.a $$MPP/lib/libaacsbrdec.a $$MPP/lib/libaacsbrenc.a $$MPP/lib/libsecurec.a  $$MPP/lib/libhi_cipher.a \
        -L$$MPP/lib   -live -lmd -lnnie -lmau\
        -lpthread -lm -ldl \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -L$$CROSS/alsa-lib/lib -lasound \
        -L$$CROSS/srt/lib -lsrt
}
}

contains(DEFINES,HI3516C){
message("CHIP:HI3516C")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v500/3516C
}
isEmpty(MPP){
    MPP=$$HOME/3516C/SDK/Hi3516CV300_SDK_V1.0.3.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS +=  $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a  $$MPP/lib/libive.a  \
        $$MPP/lib/libmd.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a $$MPP/lib/libhi_cipher.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        $$MPP/lib/lib_hiae.a $$MPP/lib/libisp.a \
        $$MPP/lib/lib_hiawb.a $$MPP/lib/lib_hiaf.a  $$MPP/lib/lib_hidefog.a \
        $$MPP/lib/libsns_imx323.a  \
        -lpthread -lm -ldl
}
}

contains(DEFINES,HI3516A){
message("CHIP:HI3516A")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v300/3516A
}
isEmpty(MPP){
    MPP=$$HOME/3516A/SDK/Hi3516A_SDK_V1.0.7.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a  $$MPP/lib/libive.a  \
         $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl
}
}

contains(DEFINES,HI3519){
message("CHIP:HI3519")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v500
}
isEmpty(MPP){
    MPP=$$HOME/3519/SDK/Hi3519V101_SDK_V1.0.5.0/mpp_big-little
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libive.a \
        $$MPP/lib/libmd.a $$MPP/lib/libpciv.a $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -lpthread -lm -ldl
}
}

contains(DEFINES,HI3536C){
message("CHIP:HI3536C")
isEmpty(CROSS){
    CROSS=$$HOME/cross/v500
}
isEmpty(MPP){
    MPP=$$HOME/3536C/SDK/Hi3536CV100_SDK_V1.0.4.0/mpp
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += $$MPP/lib/libmpi.a $$MPP/lib/libdnvqe.a $$MPP/lib/libhdmi.a $$MPP/lib/libive.a $$MPP/lib/libjpeg6b.a \
        $$MPP/lib/libmd.a  $$MPP/lib/libtde.a $$MPP/lib/libupvqe.a $$MPP/lib/libVoiceEngine.a \
        -L$$MPP/lib -lhive_common -lhive_RNR -lhive_HPF -lhive_GAIN -lhive_EQ -lhive_ANR -lhive_AGC -lhive_AEC \
        -L$$CROSS/ssl/lib -lssl -lcrypto \
        -L$$CROSS/alsa-lib/lib -lasound \
        -lpthread -lm -ldl
}
}
