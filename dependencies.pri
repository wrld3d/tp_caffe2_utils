DEPENDENCIES += tp_utils
INCLUDEPATHS += tp_caffe2_utils/inc/
LIBRARIES    += tp_caffe2_utils

LIBS += -lcaffe2
LIBS += -lprotobuf
LIBS += -lc10
LIBS += -lglog

contains(DEFINES, TP_CUDA) {
LIBS += -lcaffe2_gpu
LIBS += -lcudnn
LIBS += -lcuda
LIBS += -lcudart
LIBS += -lcurand
LIBS += -lc10_cuda
}
