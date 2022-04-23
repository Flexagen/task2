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
        ../app/text.h \
        ../app/_text.h

SOURCES += main.cpp \
    ../app/move_cursor.c \
    ../app/show.c \
    ../app/load.c \
    ../app/save.c \
    ../app/text/process_forward.c \
    ../app/text/append_line.c \
    ../app/text/create_text.c \
    ../app/text/remove_all.c

SUBDIRS += $PWD/input

INCLUDEPATH += ../app

MOC_DIR     += generated/mocs # для файлов moc-компилятора
UI_DIR      += generated/uis  # для заголовочных файлов форм дизайнера
RCC_DIR     += generated/rccs # для файлов ресурсов
OBJECTS_DIR += generated/objs # для объектных файлов

DISTFILES += ../tests/input/input.txt
