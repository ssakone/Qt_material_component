import QtQuick 2.11
import QtQuick.Controls 2.4
ApplicationWindow {
    id:app
    property alias micon: icon
    property var navigationStack
    property string view: "enokas"
    property int closeCount: 1
    property var drawer
    Icons{
        id:icon
    }
    onClosing: {
        console.log(navigationStack.depth)

        if(navigationStack.currentItem.objectName==="home"){
            if(closeCount==0){
                close.accepted=true
            }
            else{
                closeCount=0
                close.accepted=false
            }


        }
        else if(navigationStack.depth>1 && closeCount==0){
            navigationStack.pop()
            closeCount=1
            close.accepted=false
        }
        else{
            close.accepted=false
            console.log(closeCount)
            if(closeCount==0){
                close.accepted=true
            }else{
                closeCount=closeCount-1
                close.accepted=false
            }
        }
    }
}
