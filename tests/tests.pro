include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += thread
CONFIG -= qt

QMAKE_CXXFLAGS += -Wall -Wextra
QMAKE_CFLAGS += -Wall -Wextra

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

DEFINES += INPUTDIR=\\\"$$PWD/input/\\\"

HEADERS += tests.h \
        ../app/common.h \
        ../app/text/text.h \
        ../app/text/_text.h

SOURCES += main.cpp \
    ../app/move_cursor.c \
    ../app/show.c \
    ../app/load.c \
    ../app/mplb.c \
    ../app/prev_paste.c \
    ../app/save.c \
    ../app/text/process_forward.c \
    ../app/text/append_line.c \
    ../app/text/create_text.c \
    ../app/text/remove_all.c


INCLUDEPATH += ../app

DISTFILES += \
    input/input.txt