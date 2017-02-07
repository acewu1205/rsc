#-------------------------------------------------
#
# Project created by QtCreator 2017-02-06T09:30:50
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = spdlogtest
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
        mainwindow.cpp \
    spdlog/fmt/bundled/format.cc \
    spdlog/fmt/bundled/ostream.cc

HEADERS  += mainwindow.h \
    spdlog/details/async_log_helper.h \
    spdlog/details/async_logger_impl.h \
    spdlog/details/file_helper.h \
    spdlog/details/log_msg.h \
    spdlog/details/logger_impl.h \
    spdlog/details/mpmc_bounded_q.h \
    spdlog/details/null_mutex.h \
    spdlog/details/os.h \
    spdlog/details/pattern_formatter_impl.h \
    spdlog/details/registry.h \
    spdlog/details/spdlog_impl.h \
    spdlog/fmt/bundled/format.h \
    spdlog/fmt/bundled/ostream.h \
    spdlog/fmt/bundled/printf.h \
    spdlog/fmt/fmt.h \
    spdlog/fmt/ostr.h \
    spdlog/sinks/ansicolor_sink.h \
    spdlog/sinks/base_sink.h \
    spdlog/sinks/dist_sink.h \
    spdlog/sinks/file_sinks.h \
    spdlog/sinks/msvc_sink.h \
    spdlog/sinks/null_sink.h \
    spdlog/sinks/ostream_sink.h \
    spdlog/sinks/sink.h \
    spdlog/sinks/stdout_sinks.h \
    spdlog/sinks/syslog_sink.h \
    spdlog/sinks/wincolor_sink.h \
    spdlog/async_logger.h \
    spdlog/common.h \
    spdlog/formatter.h \
    spdlog/logger.h \
    spdlog/spdlog.h \
    spdlog/tweakme.h

FORMS    += mainwindow.ui
