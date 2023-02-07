import QtQuick

Window {
    width: 680
    height: 240
    visible: true
    title: qsTr("Mouse And Touch")
    Rectangle {
        width: 680
        height: 240

        Rectangle {
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 20
            }
            width:200; height:200
            id: focusBox
            property bool highlighted : focusArea.containsMouse || clickArea.pressed
            color: highlighted ? "lightgreen" : "green"
            Text {
                anchors.centerIn: parent
                text: "Observe my color"
            }
        }

        Rectangle {
            anchors.centerIn: parent
            width: 200; height:200
            color: "yellow"
            MouseArea {
                anchors.fill:  parent
                id: focusArea
                hoverEnabled: true
            }
            Text {
                anchors.centerIn: parent
                text: "Move\ninto me"
            }
        }

        Rectangle {
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 20
            }
            width:200; height:200
            color: "black"

            MouseArea {
                id: clickArea
                anchors.fill:  parent
            }
            Text {
                color: "white"
                anchors.centerIn: parent
                text: "Click\nme"
            }
        }
    }
}
