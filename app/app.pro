TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


DEFINES += INPUTDIR=\\\"$$PWD/\\\"

SOURCES += editor.c \
    load.c \
    move_cursor.c \
    save.c \
    show.c \
    text/append_line.c \
    text/create_text.c \
    text/process_forward.c \
    text/remove_all.c \
    showfirstwords.c \
    mwef.c \
    rn.c \

HEADERS += \
    common.h \
    text/_text.h \
    text/text.h

DISTFILES += \
    input/input.txt \

QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
