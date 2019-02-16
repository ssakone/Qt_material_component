import QtQuick 2.9
import QtQuick.Controls 2.2
import "src/" as MT
import QtQuick.Controls.Material 2.3
MT.App {
    id:root
    width: 800
    height: 600
    visible: true
    Component{
        id:p1
        MT.Page{
            id:pg
            header.visible: true
            appBar.elevation: 1
            appBar.prominent: false
            appBar.height: 50
            appBar.defaultHeight: 30
            clip:true
            appBar.actions: [
                MT.AppBarButton{
                    icons:micon.iAlarm
                    color: 'white'
                }

            ]
            MT.TabView{
                width: drawer.visible? parent.width-drawer.drawerWidth : parent.width
                x:drawer.visible? drawer.drawerWidth : 0
                tabButtons: [
                    TabButton{
                        text:"First"
                        height: 49.5019
                    },
                    TabButton{
                        text:"First"
                    },
                    TabButton{
                        text:"First"
                    }
                ]
                pageStacks: [
                    Item{

                    }

                ]
            }
            MT.DesktopDrawer{
                id:drawer
                drawerWidth: 250
                height: parent.height
                elevation: 2
                visible: true
                padding: 2
                Column{
                    anchors.fill: parent
                    Item{
                        width: parent.width
                        height: 100
                    }
                    MT.ListView{
                        width: parent.width
                        height: parent.height-200
                        colbody: [
                            MT.ListItem{
                                title:"Home"
                                titleIcon: micon.iHome
                                subTitle: "Home Page"
                            },
                            MT.ListItem{
                                title:"Home"
                                titleIcon: micon.iHome
                                subTitle: "Home Page"
                            }

                        ]

                    }
                }

            }

            MT.FloatActionButton{
                icons:micon.iRefresh
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: Material.color(Material.Grey,Material.Shade900)
                y:parent.parent.height-90
                parent:parent.parent.parent
            }

            footer: MT.AppBar{
                visible: true
                actions: [
                    MT.AppBarButton{
                        icons:micon.iSearch
                    },
                    MT.AppBarButton{
                        icons:micon.iMore_vert
                    }


                ]
            }

        }
    }
    Component{
        id:n
        MT.Page{
            appBar.visible: true
            appBar.prominent: true
            appBar.prominentHeight: 200
            appBar.title: "Bonjour"
            MT.ListView{
                id:vegas
                anchors.fill: parent
                contentHeight: cs.height
                MT.ListItem{
                    title: "Title : "+index
                }

                Component.onCompleted: {
                    if(parent.appBar.prominent){

                    }
                }
            }
        }
    }

    MT.StackView{
        anchors.fill: parent
        initialItem: p1
    }
}
