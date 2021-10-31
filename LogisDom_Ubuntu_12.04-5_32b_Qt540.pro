OS_VERSION = Ubuntu_12.04-5_32
QWT_VER = qwt-6.1.2
QUAZIP_VER = quazip-0.7

VERSION_PATH = $${PWD}/../Qt_$${QT_VERSION}_$${OS_VERSION}
debug::BUILD_PATH = $${VERSION_PATH}/debug
release::BUILD_PATH = $${VERSION_PATH}/release
QUAZIP_PATH = $${VERSION_PATH}/$${QUAZIP_VER}

TARGET = LogisDom_U32
DEFINES *= _TTY_POSIX_
LIBS *= -lquazip -L$${QUAZIP_PATH}/lib


include ( logisdom.pri )

