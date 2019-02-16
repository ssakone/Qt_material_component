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
        Column{
            width: parent.width-55
            height: parent.height
            padding: 5
            Label{
                text:title
                width: parent.width
                font.pixelSize: 20
                font.bold: true
                color: foregroundColor
            }
            Label{
                color: foregroundColor
                text:subTitle
                width: parent.width
                font.pixelSize: 15
            }

        }
        AppBarButton{
            icons:titleIcon
            color:foregroundColor
            font.pixelSize: 30
        }
    }

}
