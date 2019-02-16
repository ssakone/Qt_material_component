import QtQuick 2.11
import QtQuick.Controls 2.4
ItemDelegate {
    property string title: ""
    property string subTitle: ""
    property string titleIcon: ""
    property color foregroundColor: "black"
    width: parent.width
    height: 50
    Row{
        anchors.fill: parent
        AppBarButton{
            icons:titleIcon
            color:foregroundColor
            font.pixelSize: 30
            opacity: 0.7
            enabled: false
        }
        Label{
            text:title
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            opacity: 0.8
            color: foregroundColor
            //anchors.horizontalCenter: parent.horizontalCenter
        }

    }

}
