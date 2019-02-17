import QtQuick 2.11
import QtQuick.Controls 2.4
ApplicationWindow {
    id:app
    property alias material_font: font3
    property alias micon: icon
    property var navigationStack
    property string view: "enokas"
    property int closeCount: 1
    property var drawer
    Icons{
        id:icon
    }
    FontLoader {
        id: font3
        source: "material2.ttf"
    }
    onClosing: {
        if (navigationStack.depth>0){
            navigationStack.pop()
        }else{
           if(closeCount===1){
               closeCount=0
           }else{
               Qt.quit()
           }
        }
    }
}
