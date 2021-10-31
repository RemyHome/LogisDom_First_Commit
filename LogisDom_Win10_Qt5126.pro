OS_VERSION = Win10
QWT_VER = qwt-6.1.4
QUAZIP_VER = quazip-0.7.3
OPENSSL_VER = openSSL
#http://slproweb.com/products/Win32OpenSSL.html
QT_NO_DEBUG_OUTPUT

VERSION_PATH = $${PWD}/../Qt_$${QT_VERSION}_$${OS_VERSION}
debug::BUILD_PATH = $${VERSION_PATH}/debug
release::BUILD_PATH = $${VERSION_PATH}/release
QUAZIP_PATH = $${VERSION_PATH}/$${QUAZIP_VER}

TARGET = LogisDom
LIBS += -lquazip -L$${QUAZIP_PATH}/lib
LIBS += -llibcrypto-1_1 -L$${VERSION_PATH}/$${OPENSSL_VER}
LIBS += -llibssl-1_1 -L$${VERSION_PATH}/$${OPENSSL_VER}
LIBS += -lws2_32
LIBS += -lwsock32
DEFINES += _TTY_WIN_ QWT_DLL QT_DLL GL2PS_HAVE_ZLIB
CONFIG += windows

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
include (mail/mail.pri)
include (logisdom.pri)

