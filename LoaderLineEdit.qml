import QtQuick 2.0

Rectangle {
    property alias text: input.text
    signal returnPressed( string text )
    border.color: "green"
    color: "white"
    radius: 4; smooth: true
    height: 30

    TextInput {
        id: input
        anchors.fill: parent
        anchors.margins: 2
        color: focus ? "black" : "gray"
        font.pixelSize: parent.height - 4

        Keys.onReturnPressed: {
            parent.returnPressed( text )
        }
    }
}
