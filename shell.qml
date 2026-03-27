import Quickshell
import QtQuick
import "widgets/conf"
import "widgets/corners"
import "widgets/bar"

Variants {
    model: Quickshell.screens

    delegate: Component {
        PanelWindow {
            property var modelData
            screen: modelData
            //exclusionMode: ExclusionMode.Ignore
            visible: false

            CornersWidget {}
            BarWidget {
                implicitHeight: Config.barHeight
            }
        }
    }
}
