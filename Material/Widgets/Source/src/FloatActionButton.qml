import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
RoundButton{
    property color iconColor: 'white'
    property string icons: micon.iAdd
    property color backgroundColor: Material.color(Material.Blue,Material.Shade500)
    x:parent.width-90
    y:parent.height-100
    width: 80
    height: 80
    Material.elevation: 2
    Material.background: backgroundColor
    Icon{
        icon: icons
        font.pointSize: 18
        color: iconColor
        anchors.centerIn: parent
    }
}
