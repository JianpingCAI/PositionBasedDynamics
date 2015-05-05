SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../lib)
SET(CMAKE_DEBUG_POSTFIX "d")

IF (WIN32)
   SET(CMAKE_USE_RELATIVE_PATHS "1")
	# Set compiler flags for "release"
	SET(CMAKE_CXX_FLAGS_RELEASE "/MD /Ox /Ob2 /Oi /Ot /GL /D NDEBUG") 
	SET(CMAKE_EXE_LINKER_FLAGS_RELEASE "/INCREMENTAL:NO /LTCG")
	SET(IBDS_STATIC_LIBRARY_FLAGS_RELEASE "/INCREMENTAL:NO /LTCG")
ENDIF (WIN32)

IF (UNIX)
     SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin/${CMAKE_BUILD_TYPE})
ENDIF (UNIX)

ADD_DEFINITIONS(-D_CRT_SECURE_NO_DEPRECATE)

