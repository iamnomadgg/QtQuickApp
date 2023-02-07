import QtQuick

Window {
    width: 400
    height: 200
    visible: true
    title: qsTr("Gradients")
    Rectangle {
        id: expensive
        width: 400; height: 200
        Rectangle {
            x: 0; y: 0; z: 1
            width: 200; height: 200
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "green"
                }
                GradientStop {
                    position: 1.0; color: "blue"
                }
            }
        }
        Rectangle {
            x: 200; y: 0; z:0
            width: 200; height: 200
            rotation: 45
            scale: 1.5
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "green"
                }
                GradientStop {
                    position: 1.0; color: "blue"
                }
            }
        }
    }
//    Rectangle {
//        id: cheap
//        width: 400; height: 200

//        Image {
//            x: 0; y: 0
//            source: "img_gradient_vertical.png"
//        }

//        Image {
//            x: 200; y: 0
//            source: "img_gradient_diagonal.png"
//        }
//    }
}
