import QtQuick

Window {
    width: root.width
    height: root.height
    visible: true
    title: qsTr("Analog Clock")
    Rectangle {
        id: root
        color: "white"
        width: 500
        height: 500

        Item {
            property int _minSide: Math.min(root.width,root.height)
            x: 10 + (root.width - _minSide)/2
            y: 10 + (root.height - _minSide)/2
            width: _minSide - 20
            height: _minSide - 20

            scale: Math.min(width / background.sourceSize.width,
                            height / background.sourceSize.height)
            transformOrigin: Item.TopLeft

            Image {
                id: background
                source: "img_analog_clock_background.png"
            }

            Image {
                // The 914 is the anchor point of the arm, measured in the file itself
                id: smallArm
                source: "img_analog_clock_smallArm.png"
                x: background.width/2 - width/2
                y: background.height/2 - 914

                transform: Rotation {
                    origin.x: smallArm.width/2
                    origin.y: 914

                    RotationAnimation on angle {
                        from:0
                        to: 360*2 // two round trips in a day
                        duration: 60000
                        loops: Animation.Infinite
                    }
                }
            }

            //--> slide
            Image {
                // The 1255 is the anchor point of the arm, measured in the file itself
                id: largeArm
                source: "img_analog_clock_largeArm.png"
                x: background.width/2 - width/2
                y: background.height/2 - 1255

                transform: Rotation {
                    origin.x: largeArm.width/2
                    origin.y: 1255
                    angle: 90 // Likely a calculation from other properties

                    // Angle above is just for the slides
                    RotationAnimation on angle {
                        from:0
                        to: 360*24 // 24 hours in a day
                        duration: 60000 // run through a complete day in one minute.
                        loops: Animation.Infinite
                    }
                }
            }
        }
    }
}
