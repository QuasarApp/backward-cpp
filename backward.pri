#
# Copyright (C) 2020-2020 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

!isEmpty(BACKWORD_LIB):error("backword.pri already included")
BACKWORD_LIB = 1

#DEPENDS
CONFIG(release, debug|release): {
    BACKWORD_LIB_OUTPUT_DIR="$$PWD/build/release"
} else {
    BACKWORD_LIB_OUTPUT_DIR="$$PWD/build/debug"
}

unix:LIBS += -L$$DEPLOY_LIB_OUTPUT_DIR -lbackword
win32:LIBS += -L$$DEPLOY_LIB_OUTPUT_DIR -lbackword1


INCLUDEPATH += "$$PWD/"




