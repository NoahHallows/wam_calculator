

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Rectangle {
    id: rectangle
    width: 1334
    height: 750

    ListView {
        id: units
        x: 240
        y: 200
        width: 160
        height: 80
        model: ListModel{}
        delegate: Unit_item {
                unitName: model.unitName
                mark: model.mark
        }
    }

    Button {
        id: submit
        x: 270
        y: 370
        opacity: 1
        text: qsTr("Calculate")
        onClicked: wamtime()
        background: Rectangle {
            opacity: enabled ? 1 : 0.3
            color: "#ff5000"
            radius: 8
            border.color: "#ff7d00"
            border.width: 1
            implicitWidth: 100
            implicitHeight: 40
        }
    }
    Button {
        id: add_unit_button
        x: 482
        y: 300
        opacity: 1
        text: qsTr("Add")
        onClicked: addUnit()
        background: Rectangle {
            opacity: enabled ? 1 : 0.3
            color: "#318aff"
            radius: 8
            border.color: "#000437"
            border.width: 1
            implicitWidth: 100
            implicitHeight: 40
        }
    }

    TextField {
        id: unit_name_edit
        x: 57
        y: 305
        width: 175
        height: 30
        opacity: 1
        placeholderText: qsTr("Unit name")
        background: Rectangle {
            opacity: enabled ? 1 : 0.3
            color: "#888e95"
            radius: 2
            border.color: "#939393"
            border.width: 1
            implicitWidth: parent.width
            implicitHeight: parent.height
        }
    }

    TextField {
        id: unit_mark_edit
        x: 277
        y: 305
        width: 175
        height: 30
        opacity: 1
        placeholderText: qsTr("Mark")
        background: Rectangle {
            opacity: enabled ? 1 : 0.3
            color: "#888e95"
            radius: 2
            border.color: "#939393"
            border.width: 1
            implicitWidth: parent.width
            implicitHeight: parent.height
        }
    }

     Text {
        id: wamText
        x: 223
        y: 77
        visible: true
        width: 500
        height: 65
        text: qsTr("Your WAM is: ")
        font.pixelSize: 50
    }

    function addUnit() {
        console.log("Hello")
        units.model.append({"unitName":unit_name_edit.text, "mark":unit_mark_edit.text})
        backend.add_unit(unit_mark_edit.text)
        unit_name_edit.clear()
        unit_mark_edit.clear()

    }

    function wamtime() {
        console.log("Your wam is")
        backend.wam()
            }

    Connections {
        target: backend
        function onWamCalculated(wam){
            console.log("Here")
            wamText.text = "Your WAM is: " + wam
            wamText.visible = true
        }
    }

}
