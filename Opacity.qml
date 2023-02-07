import QtQuick

Window {
    width: root.width
    height: root.height
    visible: true
    title: qsTr("Opacity")
    Rectangle {
        id: root
        width: 400; height: 400
        color: "#00a3fc"
        Rectangle {
            x: 50; y: 50; width: 200; height: 300
            color: "white"
            opacity: 0.5

            Rectangle {
                x: 100; y: 25; width: 200; height: 50
                color: "red"
                //inherits opacity from its parent as 0.5
                opacity: 0.5 //opacity = 0.5*0.5
            }
            Rectangle {
                x: 100; y: 90; width: 200; height: 50
                color: "red"
                //inherits opacity from its parent as 0.5
            }
        }

        Rectangle {
           x: 150; y: 210; width: 200; height: 50
           color: "red"
           opacity: 0.5
        }
        Rectangle {
           x: 150; y: 275; width: 200; height: 50
           color: "red"
        }
    }
}
