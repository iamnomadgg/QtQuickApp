import QtQuick

Window {
    width: 300
    height: 100
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        width: 300
        height: 100

        Component {
            id: lineEditComponent

            LoaderLineEdit {
                text: "Hello World"
                onReturnPressed: txt2.text = "Return Pressed: " + text
            }
        }

        Loader {
            id: loader
            sourceComponent: lineEditComponent
            anchors { left: parent.left; right: parent.right; top: parent.top }
        }
        //<-- slide

        Text {
            id: txt1
            text: "Binding: " + (loader.item ?  loader.item.text : "")
            anchors { left: parent.left; right: parent.right; top: loader.bottom; margins: 5 }
        }

        Text {
            id: txt2
            anchors { left: parent.left; right: parent.right; top: txt1.bottom; margins: 5 }
        }
    }
}
