import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
Page {
    property alias appBar: siAppBar
    property alias pageTitle: siAppBar.title
    property alias navigationActionButton: siAppBar.actions
    property alias navigationBottomActionButton: siBottomAppBar.actions
    property color backgroundColor: 'white'
    Material.background: backgroundColor
    id: button
    header: AppBar{
        id: siAppBar
        visible: false
    }
    footer: BottomAppBar{
        id:siBottomAppBar
        visible: false
    }
}
