import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window


Dialog {
    id: alarmDialog
    title: "Add new alarm"
    modal: true
    standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel
    property AlarmModel alarmModel

    function formatNumber(number) {
        return number < 10 && number >= 0 ? "0" + number : number.toString()
    }
    contentItem: RowLayout {
        RowLayout {
            id: rowTumbler

           Tumbler {
                id: hoursTumbler
                model: 24
                delegate: TumblerDelegate {
                    text: formatNumber(modelData)
                }
            }
        }
    }

}
