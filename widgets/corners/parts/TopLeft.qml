import QtQuick
import Quickshell
import "../../styles"

PanelWindow {
    id: topLeftCorner
    anchors {
        top: true
        left: true
    }
    implicitWidth: 20
    implicitHeight: 20
    color: "transparent"

    Canvas {
        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d");
            ctx.clearRect(0, 0, width, height);

            var radius = 25;

            ctx.fillStyle = Colors.primary;
            ctx.beginPath();
            ctx.moveTo(0, radius);
            ctx.quadraticCurveTo(0, 0, radius, 0);
            ctx.lineTo(0, 0);
            ctx.closePath();
            ctx.fill();
        }
    }
}
