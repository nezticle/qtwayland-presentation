# QtWayland
## Creating Window Compositors with the QtWayland module

This contains my QtWayland talk for the Qt Developer Days 2012.  

To build this project you will need:
Qt 5.0
QML presentation system https://qt.gitorious.org/qt-labs/qml-presentation-system

Once you have the QML presentation system installed into your Qt 5.0 imports folder, you can either run the presentation with qmlscene:
qmlscene SlideDeck.qml

or build the standalone viewer:
qmake presentation.pro
make
./qtwayland-presentation