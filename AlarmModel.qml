import QtQuick

ListModel {
    id: alarmModel

    ListElement {
        hour: 5
        minute: 30
        day: 28
        month: 7
        year: 2022
        activated: true
        label: "Wake up"
    }
    ListElement {
        hour: 6
        minute: 00
        day: 29
        month: 7
        year: 2022
        activated: true
        label:"Wake up"
    }
    ListElement {
        hour: 7
        minute: 00
        day: 29
        month: 7
        year: 2022
        activated: true
        label:"Exercise"
    }
    ListElement {
        hour: 9
        minute: 00
        day: 29
        month: 7
        year: 2022
        activated: true
        label:"Office"
    }
}

