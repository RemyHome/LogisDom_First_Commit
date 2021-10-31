OS_VERSION = Ubuntu64
QWT_VER = qwt-6.1.4
QUAZIP_VER = quazip-0.7.3
#QT_NO_DEBUG_OUTPUT
VERSION_PATH = $${PWD}/../Qt_$${QT_VERSION}_$${OS_VERSION}
debug::BUILD_PATH = $${VERSION_PATH}/debug
release::BUILD_PATH = $${VERSION_PATH}/release

TARGET = LogisDom_U64
DEFINES += _TTY_POSIX_ POSIX

QUAZIP_PATH = $${VERSION_PATH}/$${QUAZIP_VER}
LIBS *= -lquazip -L$${QUAZIP_PATH}/lib

include (teleinfo/teleinfo.pri)
include (x10/x10.pri)
include (plcbus/plcbus.pri)
include (devonewire/devonewire.pri)
include (deveo/deveo.pri)
include (ha7s/ha7s.pri)
include (ha7net/ha7net.pri)
include (enocean/enocean.pri)
include (mbus/mbus.pri)
include (fts800/fts800.pri)
include (modbus/modbus.pri)
include (ecogest/ecogest.pri)
include (logisdom.pri)

