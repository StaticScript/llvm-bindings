if (CMAKE_HOST_APPLE)
    list(APPEND CMAKE_PREFIX_PATH /usr/local/opt/llvm/lib/cmake/llvm)
endif ()

find_package(LLVM 13 REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")

include_directories(${LLVM_INCLUDE_DIRS})

add_definitions(${LLVM_DEFINITIONS})

llvm_map_components_to_libnames(LLVM_LIBS core codegen irreader linker support target ${LLVM_TARGETS_TO_BUILD})
