import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
Pane {
    property int topo: showHeaderBar? 0 : 10
    property bool showHeaderBar: false
    property int elevation: 2
    property color backgroundColor: Material.color(Material.Blue)
    property color foregroundColor: 'white'
    property string title: ""
    property int titleSize: 18
    property bool centerTitle: false
    property alias leading: lead
    property int titleSpaceWidth:15
    property color accentColor: Material.color(Material.Grey,Material.Shade900)
    property list<Item> actions: [
        AppBarButton{
         id:lead
         icons: micon.iMenu
         color:foregroundColor
         onClicked: {
             if(icons==micon.iArrow_back){
                 navigationStack.pop()
             }else if(icons==micon.iMenu){
                 drawer.open()
             }
          }
        },
        Space{
           height: 1
           width: titleSpaceWidth
        },
        Label{
            Layout.fillWidth: true
            text:title
            font.pointSize: titleSize
            font.family: 'Roboto'
            horizontalAlignment: centerTitle? Text.AlignHCenter : Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
        }
    ]
    height: 50
    Material.accent: accentColor
    Material.foreground: foregroundColor
    Material.elevation: elevation
    Material.background: backgroundColor
    id:control
    width: showHeaderBar? parent.width: parent.width-20
    anchors.horizontalCenter: parent.horizontalCenter
    RowLayout{
        id:toolBarLayout
        width: parent.width+15
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        children: actions
        spacing: 2
        Layout.margins: 5
        Layout.rowSpan: 1
    }
    Rectangle{
        clip:true
        visible: showHeaderBar
        id:searchzone
        radius: 100
        width: 0
        height: control.height
        anchors.centerIn: parent
        RowLayout{
            width: parent.width+15
            anchors.horizontalCenter: parent.horizontalCenter
            height: 50
            children: [
                Space{
                       height: 1
                       width: 10
                },
                AppBarButton{
                 icons: micon.iArrow_back
                 color: primaryColor
                 onClicked: {
                    showHeaderBar=false
                  }
                },
                TextField{
                    topPadding: -20
                    color: primaryColor
                    placeholderText: "Recherche..."
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    font.pixelSize: 25
                    //verticalAlignment: Text.AlignVCenter
                }
            ]
            spacing: 2
            Layout.margins: 5
            Layout.rowSpan: 1
        }
        NumberAnimation on width {
            from:0
            to:control.width
            duration: 200
            running: showHeaderBar
        }
        NumberAnimation on radius {
            from:10
            to:0
            duration: 500
            running: showHeaderBar
        }
    }
}
