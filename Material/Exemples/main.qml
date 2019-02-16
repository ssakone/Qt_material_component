import QtQuick 2.9
import QtQuick.Controls 2.2
import "src/" as MT
MT.App {
    width: 800
    height: 600
    visible: true
    Component{
        id:p1
        MT.Page{
            id:pg
            header.visible: true
            appBar.elevation: 1
            clip:true
            appBar.actions: [
                MT.AppBarButton{
                    icons:micon.iAlarm
                    color: 'white'
                }

            ]


        }
    }

    MT.StackView{
        anchors.fill: parent
        initialItem: p1
    }
}
