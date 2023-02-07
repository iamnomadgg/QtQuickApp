import QtQuick

Window {
    width: root.width
    height: root.height
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: root
        width: 400; height: 400
        color: "#0000ff"

        AnimatedImage {
            id: animation
            x: 100; y: 100
            width: 200; height: 200
            source: "image-animated.gif"
        }

        Rectangle {
            id: blackRect
            x: 100; y: 310; width: 200; height: 24
            color: "black"

            Rectangle {
                width: 4; height: 24
                color: "red"

                x: (parent.width - width) * animation.currentFrame / animation.frameCount
            }

            Text {
                text: "Frame %1 of %2".arg(animation.currentFrame).arg(animation.frameCount)
                color: "white"
                font.pixelSize: 18
                width:blackRect.width
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
