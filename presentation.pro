TARGET = qtwayland-presentation
TEMPLATE = app

QT += quick

SOURCES += \
    main.cpp

OTHER_FILES += \
    SlideDeck.qml \
    Background.qml \
    Swirl.qml \
    ColorStrip.qml \
    DigiaFooter.png \
    devdays.png \
    qtlogo.png \
    QWS-Graphics.png \
    wayland.png \
    wayland-architecture.png

linux-rasp-pi-g++{
    assets.path = /opt/apps/qtwayland-presentation
    assets.files = $$OTHER_FILES
    target.path = /opt/apps/qtwayland-presentation
    INSTALLS += target assets
}
