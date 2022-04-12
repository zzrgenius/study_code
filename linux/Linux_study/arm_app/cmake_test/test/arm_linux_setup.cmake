set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(TOOLCHAIN_DIR /opt/gcc-linaro-arm-linux-gnueabihf)
set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-g++)
set(BUILD_SHARED_LIBS ON)
set(GNU_FLAGS "-Wall -O2 -fPIC -g -shared")
set(CMAKE_CXX_FLAGS "${GNU_FLAGS} ")
set(CMAKE_C_FLAGS "${GNU_FLAGS}  ")
SET(CMAKE_FIND_ROOT_PATH  ${TOOLCHAIN_DIR}
 ${TOOLCHAIN_DIR}/arm-linux-gnueabihf/include
 ${TOOLCHAIN_DIR}/arm-linux-gnueabihf/lib )
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#  include_directories(/usr/local/Trolltech/QtEmbedded-4.8.5-arm/include/)
#  link_directories(/usr/local/Trolltech/QtEmbedded-4.8.5-arm/lib)