import QtQuick 2.0


Rectangle {
    property alias color: colorTableItem.color2
    id: colorTableItem
    width: 32
    height: 32
    visible: false;

    property color color1: "black"
    property color color2: "white"

    gradient: Gradient {
        GradientStop { position: 0.0; color: "transparent"}
        GradientStop { position: 0.05; color: colorTableItem.color1 }
        GradientStop { position: 0.051; color: colorTableItem.color2 }
        GradientStop { position: 0.949; color: colorTableItem.color2 }
        GradientStop { position: 0.95; color: colorTableItem.color1 }
        GradientStop { position: 1.0; color: "transparent" }
    }
}

