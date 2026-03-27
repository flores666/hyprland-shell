import Quickshell
import QtQuick
import "widgets/corners"

Variants {
    model: Quickshell.screens

    delegate: Component {
        PanelWindow {
            property var modelData
            screen: modelData
            //exclusionMode: ExclusionMode.Ignore
            visible: false

            CornersWidget {}
        }
    }
}
