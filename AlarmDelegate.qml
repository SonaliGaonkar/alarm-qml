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
                    font.pointSize: 22
                    text: dateColumn.alarmDate.toLocaleTimeString(window.locale, Locale.ShortFormat)
                }
                RowLayout {
                    Label {
                        id: dateLabel
                        font.pointSize : 16
                        text: dateColumn.alarmDate.toLocaleDateString(window.locale, Locale.ShortFormat)
                    }
                    Label {
                        id: alarmAbout
                        font.pointSize: 14
                        text: "  ⸱    " + label
                        visible: label.length > 0 && !root.checked
                    }
                }
            }
        }
     }
}
