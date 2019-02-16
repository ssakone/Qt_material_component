import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
Pane {
    property int elevation: 2
    property color backgroundColor: Material.Blue
    property list<Item> actions
    height: 50
    Material.accent: Material.color(Material.Grey,Material.Shade50)
    Material.foreground: Material.color(Material.Grey,Material.Shade50)
    Material.elevation: elevation
    Material.background: backgroundColor
    id:control
    RowLayout{
        id:toolBarLayout
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        children: actions
        spacing: 2
        Layout.margins: 5
        Layout.rowSpan: 1
        Layout.alignment: Qt.AlignHCenter
    }
}
