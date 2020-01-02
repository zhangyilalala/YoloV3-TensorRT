set(TensorRTSSD_DEPENDENCY_LIBS "")

include(cmake/Cuda.cmake)
if(NOT HAVE_CUDA)
  message(WARNING "Not compiling with CUDA support. Suppress this warning with -DUSE_CUDA=OFF.")
  set(USE_CUDA OFF)
endif()

#for dnn test
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_core.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_imgproc.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_imgcodecs.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_videoio.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_highgui.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_video.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_videostab.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_optflow.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_aruco.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_phase_unwrapping.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_bgsegm.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_photo.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_bioinspired.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_plot.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_calib3d.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_ximgproc.so)
#list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_quality.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_ccalib.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_reg.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_rgbd.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_datasets.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_saliency.so)
#list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_dnn_objdetect.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_shape.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_dnn.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_stereo.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_dpm.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_stitching.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_face.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_structured_light.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_features2d.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_superres.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_flann.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_surface_matching.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_fuzzy.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_text.so)
#list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_gapi.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_tracking.so)
#list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_hfs.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_img_hash.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_xfeatures2d.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_line_descriptor.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_xobjdetect.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_ml.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_xphoto.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${OpenCV-ROOT}/lib/libopencv_objdetect.so)


LINK_LIBRARIES(libdl.so)
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_BINARY_DIR})
include_directories(${OpenCV-ROOT}/include/opencv4)

INCLUDE_DIRECTORIES(PROJECT_BINARY_DIR)
INCLUDE_DIRECTORIES(${TensorRT-ROOT}/samples/common)
INCLUDE_DIRECTORIES(${TensorRT-ROOT}/include)
INCLUDE_DIRECTORIES(${CUDA_ROOT}/include)
#TensorRT

message(STATUS "TensorRT: " ${TensorRT-ROOT})

#list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvcaffeparser.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvcaffe_parser.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvinfer.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvinfer_plugin.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvonnxparser.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvonnxparser_runtime.so)
list(APPEND TensorRTSSD_DEPENDENCY_LIBS ${TensorRT-ROOT}/lib/libnvparsers.so)
