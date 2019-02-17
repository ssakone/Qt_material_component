import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3

StackView {
    id:stack
    Component.onCompleted: {
        navigationStack = stack
    }
    pushEnter: Transition {
      id: pushEnter
      ParallelAnimation {
          PropertyAction { property: "x"; value: pushEnter.ViewTransition.item.pos }
          NumberAnimation { properties: "y"; from: 200; to: pushEnter.ViewTransition.item.pos; duration: 200; easing.type: Easing.OutCubic }
          NumberAnimation { property: "opacity"; from: 0; to: 1; duration: 400; easing.type: Easing.OutCubic }
      }
   }
    popExit: Transition {
    id: popExit
    ParallelAnimation {
        PropertyAction { property: "x"; value: popExit.ViewTransition.item.pos }
        NumberAnimation { properties: "y"; from: 0; to: 100; duration: 100; easing.type: Easing.OutCubic }
        NumberAnimation { property: "opacity"; from: 1; to: 0; duration: 150; easing.type: Easing.OutCubic }
    }
  }
}
