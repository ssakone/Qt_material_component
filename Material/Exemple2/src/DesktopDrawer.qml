import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
Pane {
    property bool rnDD: false
    property int drawerWidth: 200
    property int elevation: 1
    id:drawer
    visible: false
    width: drawerWidth
    height: parent.height
    Material.elevation: elevation
    NumberAnimation on width{
       from:0
       to:drawerWidth
       duration: 150
       running: rnDD

    }
    function isOpen(){
        return visible
    }

    function open(){
        visible=true
        rnDD=true
    }
    function close(){
        visible=false
        rnDD=false
        parent.leftPadding=0
    }

}
