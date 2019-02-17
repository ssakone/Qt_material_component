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
    property int flexibleSpaceWidth:300
    property string flexibleBackgroundImage: ""
    property color accentColor: Material.color(Material.Grey,Material.Shade900)
    width: page.width
    height: flexibleSpaceWidth
    padding: 0
    Image {
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: flexibleBackgroundImage
    }
    property list<Item> actions: [
        AppBarButton{
         id:lead
         icons: navigationStack.depth>1? micon.iArrow_back :  micon.iMenu
         color:'white'
         onClicked: {
             if(icons==micon.iArrow_back){
                 navigationStack.pop()
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
    Material.accent: accentColor
    Material.foreground: foregroundColor
    Material.elevation: elevation
    Material.background: backgroundColor
    id:control
    RowLayout{
        y:2
        id:toolBarLayout
        width: parent.width-10
        anchors.horizontalCenter: parent.horizontalCenter
        height: 40
        children: actions
        spacing: 2
        Layout.margins: 5
        Layout.rowSpan: 1
    }
}
