TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += editor.c \
    

HEADERS += \
    common.h \


QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
