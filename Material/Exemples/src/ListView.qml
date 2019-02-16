import QtQuick 2.11
Flickable{
    property alias colbody: col.children
    property alias rowbody: row.children
    property string orientation: "vertical"
    property int spacing: 0
    anchors.fill: parent
    contentHeight: orientation=="vertical"?col.height:parent.height
    contentWidth: orientation=="horizontal"?row.width:parent.width
    clip: true
    children: [
        Row{
            height: parent.height;
            id:row;
            visible: orientation=="horizontal";
            spacing: spacing
        },Column{
            width: parent.width;
            id:col;
            visible:orientation=="vertical";
            spacing: spacing
        }
    ]

}
