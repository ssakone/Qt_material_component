import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
Page {
    id:page
    property alias appBar: siFlexibleAppBar
    property alias pageTitle: siFlexibleAppBar.title
    property alias navigationActionButton: siFlexibleAppBar.actions
    property alias navigationBottomActionButton: siBottomAppBar.actions
    property alias body: columinis.children
    footer: BottomAppBar{
        id:siBottomAppBar
        visible: false
    }
    header: FlexibleAppBar{
        id:siFlexibleAppBar

    }
    Flickable{
        anchors.fill: parent
        contentHeight: parent.height
        Column{
            id:columinis
            width: parent.width
        }
        ScrollIndicator.vertical: ScrollIndicator{
            id:scroll
            onPositionChanged: {
                if(position==0){
                    siFlexibleAppBar.height = siFlexibleAppBar.flexibleSpaceWidth
                    siFlexibleAppBar.elevation=0
                }else if(position>0.15){
                    siFlexibleAppBar.height = 60
                    siFlexibleAppBar.elevation=5
                }
                else if(position<0){
                    siFlexibleAppBar.elevation=0
                    siFlexibleAppBar.height = siFlexibleAppBar.flexibleSpaceWidth-siFlexibleAppBar.flexibleSpaceWidth*(position*-5)
                }

                else{
                    siFlexibleAppBar.elevation=0
                    siFlexibleAppBar.height = siFlexibleAppBar.flexibleSpaceWidth-siFlexibleAppBar.flexibleSpaceWidth*(position*5)
                }
                console.log("changed")
                console.log(position)
            }
        }

    }
}
