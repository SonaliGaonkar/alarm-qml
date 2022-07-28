import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window

ApplicationWindow {
    id: window
    width: 400
    height: 600
    visible: true

    ListView {
        id: alarmListView
        anchors.fill: parent
        model: AlarmModel {}
        delegate: AlarmDelegate {}
   }
}

