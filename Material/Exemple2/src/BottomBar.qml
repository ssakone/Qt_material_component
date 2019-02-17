import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
Pane {
    property int elevation: 2
    property color backgroundColor: Material.Blue
    property color foregroundColor: Material.Red
    height: 50
    Material.accent: Material.color(Material.Grey,Material.Shade50)
    Material.foreground: foregroundColor
    Material.elevation: elevation
    Material.background: backgroundColor
    id:control

}
