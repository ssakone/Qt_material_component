import QtQuick 2.9
import QtQuick.Controls 2.2

ToolButton {
    id: toolButton
    property string icons: ""
    property color color: "white"
    Text {
        anchors.centerIn: parent
        text: toolButton.icons
        font.family: Icons.icons
        font.pointSize: 24
        opacity: 0.75
        color: toolButton.color
    }
}
