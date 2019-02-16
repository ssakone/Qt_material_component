import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
GridView{
    property var func
    width:parent.width-20
    height: parent.height
    anchors.horizontalCenter: parent.horizontalCenter
    model:modal
    cellWidth:(parent.width/2)-10
    cellHeight:(parent.width/2)-10
    contentWidth: parent.width
    delegate: ItemDelegate{
        Pane{
            clip:true
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            padding: 0
            Material.elevation: 5
            Material.background: color

            Rectangle{
                anchors.fill: parent
                color:'transparent'
                AppBarButton{
                    icons:icone
                    anchors.centerIn: parent
                    font.pixelSize: 50
                }
            }


            Rectangle{
                anchors.bottom: parent.bottom
                height: 40
                width: parent.width
                color: "black"
                opacity: 0.4
            }
            Row{
                id:zoa
                anchors.bottom: parent.bottom
                width: parent.width
                height: 40
                padding: 5
                Text{

                    width: parent.width-60
                    text:name.slice(0,100).toUpperCase()+""
                    font.pixelSize: 15
                    font.family: 'Roboto'
                    color:'white'
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text{
                    width: 40
                    text:"$"+price
                    font.pointSize: 15
                    font.family: 'Roboto'
                    color:'orange'
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    func(name)
                }
            }
        }
        width: (parent.width/2)-15
        height: (parent.width/2)-15
    }

}

