#-------------------------------------------------
#
# Project created by QtCreator 2017-02-07T13:47:33
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = glogtest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h \
    glog/log_severity.h \
    glog/logging.h \
    glog/raw_logging.h \
    glog/stl_logging.h \
    glog/vlog_is_on.h

FORMS    += mainwindow.ui

DISTFILES +=

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/./release/ -lglog
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/./debug/ -lglog
else:unix: LIBS += -L$$PWD/./ -lglog

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.
