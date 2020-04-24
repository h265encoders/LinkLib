LIBS+=-lLinkSVP

if(!contains(DEFINES,HI3516E)){
if(!contains(DEFINES,HI3559A)){
LIBS += -lgomp -lpthread
LIBS+=$$CROSS/ncnn/lib/libncnn.a
INCLUDEPATH+=$$CROSS/ncnn/include
}
}

if(!contains(DEFINES,HI3559A)){
if(!contains(DEFINES,HI3516E)){
QMAKE_CXXFLAGS += -fopenmp
LIBS+=-L$$CROSS/opencv/lib -lopencv_core  -lopencv_video  -lopencv_tracking -lopencv_imgproc

INCLUDEPATH+=$$CROSS/opencv/include/opencv4
}
}
