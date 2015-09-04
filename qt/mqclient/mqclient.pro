TARGET = mqclient
TEMPLATE = app
DEPENDPATH += .
INCLUDEPATH += .

MOC_DIR = moc
OBJECTS_DIR = obj

PRECOMPILED_HEADER = global.h

# Input
HEADERS  += global.h        \
            MainWindow.h    \
            MqClient.h
SOURCES  += main.cpp        \
            MainWindow.cpp  \
            MqClient.cpp

LIBS += -lmosquittopp