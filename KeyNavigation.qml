import QtQuick

Window {
    width: 400
    height: 200
    visible: true
    title: qsTr("Key Navigation")
    Rectangle {
        width: 400; height: 200; color: "black"

        Rectangle {
            id: leftRect
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 25
            }
            width: 150; height: 150
            color: activeFocus ? "red" : "darkred"
            KeyNavigation.right: rightRect
            focus: true
        }

        Rectangle {
            id: rightRect
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 25
            }
            width: 150; height: 150
            color: activeFocus ? "#00ff00" : "#008800"
            KeyNavigation.left: leftRect
        }
    }
}
