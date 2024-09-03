cmake_minimum_required(VERSION 3.30)

project(seqDetection
    LANGUAGES CXX
)

add_executable(seqDetection
    ../edgeDetectionSequential/canny_sequential.cpp
)

# add_library(<name> <type> IMPORTED [GLOBAL]) 
# => type == shared for .dll
find_library(CORONA_LIB corona
    HINTS ${CMAKE_CURRENT_SOURCE_DIR}/../corona-1.0.2-vc7/lib/
)

target_link_libraries(seqDetection 
    PRIVATE "${CORONA_LIB}"
)

find_path(CORONA_H corona
    HINTS ${CMAKE_CURRENT_SOURCE_DIR}/../corona-1.0.2-vc7/include/
)
target_link_directories(seqDetection PRIVATE "${CORONA_H}")

install(TARGETS seqDetection)


#add_library(corona.lib SHARED IMPORTED GLOBAL)
#set_target_properties(corona PROPERTY IMPORTED_LOCATION ${CMAKE_BINARY_DIR}/corona-1.0.2-vc7/bin/corona.dll)