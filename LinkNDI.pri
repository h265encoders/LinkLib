CONFIG += c++11

LIBS += -lLinkNDI

LIBS+=-L/home/linkpi/work/1126/RV1126_RV1109_SDK/buildroot/output/rockchip_rv1126_rv1109_linkpi/target/usr/lib -lexpat -ldbus-1 -ldaemon  -lavahi-common -lavahi-client
INCLUDEPATH += /home/linkpi/work/1126/RV1126_RV1109_SDK/buildroot/output/rockchip_rv1126_rv1109_linkpi/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include
LIBS+=-L$$CROSS/NDI/lib -lndi
