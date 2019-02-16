import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
Pane {
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
        SIAppBarButton{
         id:lead
         icons: navigationStack.depth>1? micon.iArrow_back :  micon.iMenu
         color:foregroundColor
         onClicked: {
             if(icons==micon.iArrow_back){
                 navigationStack.pop()
             }else if(icons==micon.iMenu){
                 drawer.open()
             }
         }
        },
        SISpacer{
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
}
