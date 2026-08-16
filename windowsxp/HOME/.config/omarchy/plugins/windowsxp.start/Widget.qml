import QtQuick
import qs.Ui

BarWidget {
  id: root
  moduleName: "windowsxp.start"

  implicitWidth: button.width - 8
  implicitHeight: root.barSize

  Rectangle {
    id: button
    x: -8
    y: -3
    width: content.implicitWidth + 24
    height: root.barSize + 6

    gradient: Gradient {
      GradientStop { position: 0.000; color: "#3E803E" }
      GradientStop { position: 0.067; color: "#96C496" }
      GradientStop { position: 0.133; color: "#3C993C" }
      GradientStop { position: 1.000; color: "#1A6541" }
    }
    border.color: "#1A6444"
    border.width: 1
    topRightRadius: 8
    bottomRightRadius: 8

    Row {
      id: content
      anchors.centerIn: parent
      spacing: 6

      Text {
        text: "\ue900"
        font.family: "omarchy"
        font.pixelSize: 15
        color: "white"
        verticalAlignment: Text.AlignVCenter
      }
      Text {
        text: "Start"
        font.bold: true
        font.pixelSize: 13
        color: "white"
        verticalAlignment: Text.AlignVCenter
      }
    }

    MouseArea {
      anchors.fill: parent
      acceptedButtons: Qt.LeftButton | Qt.RightButton
      hoverEnabled: true
      cursorShape: Qt.PointingHandCursor
      onClicked: function(mouse) {
        if (mouse.button === Qt.RightButton) {
          root.bar.run("xdg-terminal-exec")
        } else {
          root.bar.run("omarchy-shell shell toggle omarchy.menu '{\"menu\":\"root\"}'")
        }
      }
    }
  }
}
