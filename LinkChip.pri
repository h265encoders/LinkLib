DEFINES += $$chip
isEmpty(HOME){
    HOME=/home/linkpi/work
}

contains(DEFINES,RV1126){
message("CHIP:RV1126")
isEmpty(CROSS){
    CROSS=$$HOME/cross
}
isEmpty(MPP){
    MPP=/home/linkpi/work/1126/RV1126_RV1109_SDK/buildroot/output/rockchip_rv1126_rv1109_linkpi/target/usr/lib
}
INCLUDEPATH += $$MPP/include
INCLUDEPATH += $$CROSS/ffmpeg/include
if(!contains(DEFINES,LINK_LIBRARY)){
LIBS += -L$$MPP -lrockchip_mpp -lrockchip_vpu -lrga -ldrm -lasound
}
}
