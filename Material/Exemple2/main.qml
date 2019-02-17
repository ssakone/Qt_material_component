import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
import "src/" as MT
MT.App {
    id: root
    visible: true
    width: 400
    height: 680
    title: qsTr("Facebook ")
    Component{
        id:home
        MT.Page{
            appBar.backgroundColor: "#0084ff"
            appBar.visible: true
            appBar.leading.icons: micon.iPhoto_camera
            appBar.actions:[
                TextField{
                    placeholderText: micon.iSearch+" Search"
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                    width: parent.width-60
                    color: 'white'
                    Material.foreground: Material.color(Material.Grey,Material.Shade50)
                    Material.accent: Material.color(Material.Grey,Material.Shade50)
                    Material.background: Material.color(Material.Grey,Material.Shade50)
                    font.pixelSize: 17
                    anchors.verticalCenter: parent.verticalCenter
                },
                MT.AppBarButton{
                    icons:micon.iMessage
                }

            ]
        }
    }
    MT.StackView{
        anchors.fill: parent
        initialItem: home
    }
}
