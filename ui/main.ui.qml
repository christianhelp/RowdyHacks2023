
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.4
import QtQuick.Controls 6.4

ApplicationWindow{
	visible: true
	width: 1280
	height: 900
	title: "r/Slang"

	Rectangle {
		id: rectangle
		width: 1280
		height: 900
		color: "#494545"

		Label {
			id: label
			y: 8
			text: qsTr("r/Slang")
			color: "#ffffff"
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: parent.top
			anchors.bottom: mapImage.top
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
			anchors.rightMargin: 0
			anchors.leftMargin: 0
			anchors.bottomMargin: 0
			anchors.topMargin: 0
			font.pointSize: 48
		}

		Image {
			id: mapImage
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: parent.top
			source: "../images/usa_map.jpg"
			anchors.rightMargin: 10
			anchors.leftMargin: 10
			anchors.topMargin: 110
			sourceSize.height: 0
			sourceSize.width: 0
			fillMode: Image.PreserveAspectFit
		}

		Row {
			id: searchBar
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: mapImage.bottom
			anchors.bottom: parent.bottom
			spacing: 10
			anchors.bottomMargin: 50
			anchors.topMargin: 50
			anchors.rightMargin: 150
			anchors.leftMargin: 150
			focus: true
			Keys.onReturnPressed: getStateWordFrequency(searchBox.text)

			TextField {
				id: searchBox
				width: 910
				placeholderText: "Search..."
			}

			Button {
				id: button
				x: 920
				text: qsTr("Search")
				onClicked: getStateWordFrequency(searchBox.text)
			}
		}
	}
}