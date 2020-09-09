#
# Copyright (C) 2020-2020 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

DEFINES += BACKWORD_LIBRARY

TEMPLATE = lib
CONFIG += c++17
CONFIG -= app_bundle
CONFIG -= qt

VERSION = 1.5.0

CONFIG(release, debug|release): {
    DESTDIR="$$PWD/build/release"
} else {
    DESTDIR="$$PWD/build/debug"
}

HEADERS += \
    backward.hpp

SOURCES += \
    backward.cpp
