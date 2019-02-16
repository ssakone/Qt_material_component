import QtQuick 2.11
import QtQuick.Controls 2.12 as QC
QC.Drawer {
    property alias header: page.header
    property alias footer: page.footer
    width: parent.width*0.85
    height: parent.height
    QC.Page{
        id:page
        anchors.fill: parent

    }
}
