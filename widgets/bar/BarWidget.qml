import Quickshell
import QtQuick
import "../styles"
import "workspaces"

PanelWindow {
    anchors {
        left: true
        top: true
        right: true
    }
    color: Colors.primary

    Rectangle {
        id: workspacesZoom
        implicitWidth: 20
        implicitHeight: parent.height
        color: Colors.primary
    }

    WorkspacesWidget {
        anchors.left: workspacesZoom.right
    }
}
