import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int sequenceType: 0


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
            }
        }
    }

    Item {
        height: 50
        width: 300

        ComboBox {
            id: hotColdCombo
            anchors.fill: parent
            anchors.margins: parent.height * 0.2
            model: ["COLD", "HOT"]
            currentIndex : -1

            onCurrentTextChanged: {
                console.debug("INDEX VALUE :" + currentIndex)
                if (currentText == "COLD") {
                    console.debug("COLD SEQ")
                    sequenceType = 0
                } else {
                    console.debug("HOT SEQ")
                    sequenceType = 1
                }
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
