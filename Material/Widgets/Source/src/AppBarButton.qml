import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3

ToolButton{
    id:control
    FontLoader {
        id: font2
        source: "qrc:/Widgets/material2.ttf"
    }
    property string icons:""
    property alias color:texto.color
    font.pointSize: 24
    implicitHeight: 90
    anchors.verticalCenter: parent.verticalCenter
    Text {
        id:texto
        text:icons
        color:'white'
        anchors.centerIn: parent
        font.pointSize: control.font.pointSize
        font.family: font2.name
    }
}
