import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window

ItemDelegate {
    id: root
    width: parent.width
    checkable: true
    onClicked: ListView.view.currentIndex = index
    contentItem: ColumnLayout {
        spacing: 0

        RowLayout {
            ColumnLayout {
                id: dateColumn

               readonly property date alarmDate: new Date(
                   year, month, day, hour, minute)

                Label {
                    id: timeLabel
                    font.pointSize: 16
                    text: dateColumn.alarmDate.toLocaleTimeString(window.locale, Locale.ShortFormat)
                }
                RowLayout {
                    Label {
                        id: dateLabel
                        font.pointSize : 11
                        text: dateColumn.alarmDate.toLocaleDateString(window.locale, Locale.ShortFormat)
                    }
                    Label {
                        id: alarmAbout
                        font.pointSize: 11
                        text: "  ⸱    " + label
                        visible: label.length > 0 && !root.checked
                    }
                }
            }
            Item {
                Layout.fillWidth: true
            }

            Switch {
                checked: model.activated
                Layout.alignment: Qt.AlignTop
                onClicked: model.activated = checked
            }
        }
        CheckBox {
            id: alarmRepeat
            text: qsTr("Repeat")
            checked : model.repeat
        }

        Flow {
            Layout.fillWidth: true

        Repeater {
            id: dayRepeater
            model: daysToRepeat
            delegate: RoundButton {
            text: Qt.locale().dayName(model.dayOfWeek, Locale.NarrowFormat)
            flat: true
            checked: model.repeat
            checkable: true
            Material.background: checked ? Material.accent : "transparent"
            visible: root.checked
            onToggled: model.repeat = checked
            }
        }
    }

}
}
