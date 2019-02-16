import QtQuick 2.11
import QtQuick.Controls 2.4
import "../Widgets/"
ItemDelegate {
    width: parent.width
    height: 50
    Row{
        anchors.fill: parent
        Column{
            width: parent.width-55
            height: parent.height
            padding: 5
            Label{
                text:name
                width: parent.width
                font.pixelSize: 20
                font.bold: true
            }
            Label{
                text:description
                width: parent.width
                font.pixelSize: 15
            }

        }
        SIAppBarButton{
            icons:iconItem
            color:primaryColor
        }
    }
}
