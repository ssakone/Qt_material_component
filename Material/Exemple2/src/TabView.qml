import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.11
Item {
    property alias pageStacks: stackPage.children
    property alias tabButtons: tab.contentChildren
    property color tabBackgroundColor: Material.color(Material.Blue)
    property color tabForegroundColor: Material.color(Material.Grey,Material.Shade300)
    property color tabCurrentColor: Material.color(Material.Grey,Material.Shade50)
    Column{
        anchors.fill: parent
        TabBar{
            Material.accent: tabCurrentColor
            Material.foreground: tabForegroundColor
            Material.background: tabBackgroundColor
            id:tab
            width: parent.width
            height: 50
            contentWidth: 2000
            bottomPadding: 0
        }
        StackLayout{
            id:stackPage
            currentIndex: tab.currentIndex
            width: parent.width
            height: parent.height-50

        }
    }
}
