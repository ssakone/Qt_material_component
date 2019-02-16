import QtQuick 2.9
import QtQuick.Controls 2.2
import "src/" as MT
import QtQuick.Controls.Material 2.3
MT.App {
    id:root
    title:"Simple Material Exemple"
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
            MT.TabView{
                width: drawer.visible? parent.width-drawer.drawerWidth : parent.width
                x:drawer.visible? drawer.drawerWidth : 0
                height: parent.height
                tabButtons: [
                    TabButton{
                        text:"<b>Messages <font color='pink'>18</font></b>"
                        height: 49.5019
                    },
                    TabButton{
                        text:"Contacts"
                    },
                    TabButton{
                        text:"Appels"
                    }
                ]
                pageStacks: [
                    Item{
                        anchors.fill: parent
                        MT.ListView{
                            anchors.fill: parent
                            colbody: [
                                MT.ListItem{
                                    titleIcon: micon.iPerson_outline
                                    title: "<b>Thomas durang <font color='red'>2</font></b>  You have new message from Y..."
                                },
                                MT.ListItem{
                                    titleIcon: micon.iPerson_outline
                                    title: "<b>Oumar durang <font color='red'>5</font></b>  You have new message from Y..."
                                },
                                MT.ListItem{
                                    titleIcon: micon.iPerson_outline
                                    title: "<b>Ali durang <font color='red'>10</font></b>  You have new message from Y..."
                                },
                                MT.ListItem{
                                    titleIcon: micon.iPerson_outline
                                    title: "<b>Nathan durang <font color='red'>1</font></b>  You have new message from Y..."
                                }

                            ]
                        }
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
                            Item{
                              width: parent.width
                              height: 170
                              Column{
                                  anchors.fill: parent
                                  padding: 15
                                  topPadding: 20
                                  Rectangle{
                                      id:idro
                                      width: 70
                                      height: 70
                                      radius: 50
                                      color: Qt.lighter('gray')
                                      anchors.centerIn: parent
                                      MT.AppBarButton{
                                          anchors.centerIn: parent
                                          icons:micon.iPerson
                                      }
                                  }
                                  spacing: 20
                                  Text{
                                      y:130
                                      x:5
                                      opacity: 0.7
                                      height: 20
                                      width: parent.width
                                      text:"Abdramane Sakone"
                                      font.pixelSize: 20
                                      font.weight: Font.Thin
                                  }
                              }
                            },
                            MT.ListItem{
                                title:"Message"
                                titleIcon: micon.iMessage
                                subTitle: "Home Page"
                            },
                            MT.ListItem{
                                title:"Contact"
                                titleIcon: micon.iContacts
                                subTitle: "Home Page"
                            },
                            MT.ListItem{
                                title:"Appel"
                                titleIcon: micon.iCall
                                subTitle: "Home Page"
                            }
                        ]
                    }
                }
            }
            MT.FloatActionButton{
                icons:micon.iAdd
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
