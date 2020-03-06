#-------------------------------------------------
#
# Project created by QtCreator 2019-07-01T10:08:48
#
#-------------------------------------------------

QT       += core gui opengl svg

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QT_opengl
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11 console

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    opengl.cpp \

HEADERS += \
    mainwindow.h \
    opengl.h \
    \ \

FORMS += \
    mainwindow.ui


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


CONFIG(release, debug|release): DEFINES += QT_NO_DEBUG_OUTPUT

#release: DESTDIR = $$PWD/Release
#debug:   DESTDIR = $$PWD/Debug

#OBJECTS_DIR = $$DESTDIR/obj
#MOC_DIR = $$DESTDIR/moc
#RCC_DIR = $$DESTDIR/qrc
#UI_DIR = $$DESTDIR/ui

RESOURCES +=

DISTFILES += \

unix: LIBS += -lglut -lGLU

INCLUDEPATH +=

DEPENDPATH +=

unix:!macx: {
    contains(QT_ARCH, i386) {
        message("32-bit libs not built, you can build it manually")
    } else {
        LIBS +=
    }
}

win32 {
    !contains(QMAKE_TARGET.arch, x86_64) {
        message("32-bit libs not built, you can build it manually")
    } else {
        LIBS +=
    }
}

#win32: LIBS += -lGlU32 -lglut -lOpenGL32
#INCLUDEPATH += $$PWD/'../../../../../Program Files (x86)/Windows Kits/10/Lib/10.0.18362.0/um/x64'
#DEPENDPATH += $$PWD/'../../../../../Program Files (x86)/Windows Kits/10/Lib/10.0.18362.0/um/x64'
