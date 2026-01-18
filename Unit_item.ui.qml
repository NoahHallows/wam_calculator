

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Item {
    id: root
    width: 150
    height: 25

    property alias unitName: unit_name.text
    property alias mark: mark_text.text

    Text {
        id: unit_name
        x: 8
        y: 5
        width: 24
        height: 15
        text: qsTr("Text")
        font.pixelSize: 12
    }

    Text {
        id: mark_text
        x: 108
        y: 5
        text: qsTr("Text")
        font.pixelSize: 12
    }
}
