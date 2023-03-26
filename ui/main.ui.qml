

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.4
import QtQuick.Controls 6.4

ApplicationWindow {
    id: appWindow
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

            Image {
                id: washington
                x: 290
                y: 47
                width: 116
                height: 109
                source: "../images/washington.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: idaho
                x: 375
                y: 53
                width: 136
                height: 190
                source: "../images/idaho.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: montana
                x: 407
                y: 29
                width: 206
                height: 157
                source: "../images/montana.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: colorado
                x: 503
                y: 211
                width: 132
                height: 116
                source: "../images/colorado.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: wyoming
                x: 477
                y: 127
                width: 130
                height: 119
                source: "../images/wyoming.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: alaska
                x: 141
                y: 377
                width: 178
                height: 205
                source: "../images/alaska.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: hawaii
                x: 342
                y: 468
                width: 148
                height: 124
                source: "../images/hawaii.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: oregon
                x: 257
                y: 93
                width: 168
                height: 157
                source: "../images/oregon.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: california
                x: 277
                y: 206
                width: 171
                height: 196
                source: "../images/california.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: newmexico
                x: 507
                y: 288
                width: 115
                height: 125
                source: "../images/newmexico.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: arizona
                x: 411
                y: 288
                width: 118
                height: 125
                source: "../images/arizona.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: nevada
                x: 338
                y: 200
                width: 135
                height: 150
                source: "../images/nevada.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: utah
                x: 424
                y: 197
                width: 114
                height: 116
                source: "../images/utah.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: texas
                x: 538
                y: 265
                width: 221
                height: 259
                source: "../images/texas.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: oklahoma
                x: 583
                y: 269
                width: 176
                height: 126
                source: "../images/oklahoma.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: northdakota
                x: 580
                y: 39
                width: 153
                height: 125
                source: "../images/northdakota.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: southdakota
                x: 570
                y: 97
                width: 145
                height: 133
                source: "../images/southdakota.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: nebraska
                x: 581
                y: 163
                width: 151
                height: 124
                source: "../images/nebraska.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: kansas
                x: 607
                y: 219
                width: 133
                height: 111
                source: "../images/kansas.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: minnesota
                x: 668
                y: 38
                width: 139
                height: 151
                source: "../images/minnesota.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: iowa
                x: 691
                y: 158
                width: 108
                height: 106
                source: "../images/iowa.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: missouri
                x: 704
                y: 224
                width: 109
                height: 105
                source: "../images/missouri.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: arkansas
                x: 711
                y: 295
                width: 100
                height: 102
                source: "../images/arkansas.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: louisiana
                x: 733
                y: 363
                width: 94
                height: 94
                source: "../images/louisiana.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: wisconsin
                x: 732
                y: 100
                width: 120
                height: 112
                source: "../images/wisconsin.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: illinois
                x: 753
                y: 187
                width: 109
                height: 129
                source: "../images/illinois.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: indiana
                x: 795
                y: 203
                width: 101
                height: 110
                source: "../images/indiana.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: michigan
                x: 767
                y: 72
                width: 176
                height: 157
                source: "../images/michigan.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: ohio
                x: 848
                y: 185
                width: 100
                height: 94
                source: "../images/ohio.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: kentucky
                x: 796
                y: 240
                width: 115
                height: 104
                source: "../images/kentucky.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: tennessee
                x: 790
                y: 264
                width: 138
                height: 111
                source: "../images/tennessee.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: mississippi
                x: 757
                y: 324
                width: 96
                height: 111
                source: "../images/mississippi.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: florida
                x: 823
                y: 397
                width: 132
                height: 133
                source: "../images/florida.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: georgia
                x: 843
                y: 327
                width: 104
                height: 104
                source: "../images/georgia.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: alabama
                x: 790
                y: 327
                width: 111
                height: 125
                source: "../images/alabama.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: maine
                x: 1051
                y: 91
                width: 100
                height: 100
                source: "../images/maine.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: newyork
                x: 945
                y: 128
                width: 130
                height: 123
                source: "../images/newyork.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: pennsylvania
                x: 914
                y: 186
                width: 104
                height: 102
                source: "../images/pennsylvania.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: connecticut
                x: 1014
                y: 208
                width: 62
                height: 23
                source: "../images/connecticut.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: rhodeisland
                x: 1054
                y: 206
                width: 16
                height: 25
                source: "../images/rhodeisland.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: massachusetts
                x: 1032
                y: 166
                width: 61
                height: 82
                source: "../images/massachussets.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: westvirginia
                x: 889
                y: 219
                width: 99
                height: 96
                source: "../images/westvirginia.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: newjersey
                x: 996
                y: 219
                width: 42
                height: 49
                source: "../images/newjersey.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: southcarolina
                x: 880
                y: 314
                width: 91
                height: 95
                source: "../images/southcarolina.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: northcarolina
                x: 867
                y: 278
                width: 166
                height: 104
                source: "../images/northcarolina.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: virginia
                x: 887
                y: 237
                width: 128
                height: 106
                source: "../images/virginia.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: maryland
                x: 940
                y: 238
                width: 80
                height: 82
                source: "../images/maryland.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vermont
                x: 1013
                y: 139
                width: 63
                height: 57
                source: "../images/vermont.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: delaware
                x: 981
                y: 246
                width: 47
                height: 39
                source: "../images/delaware.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: newhampshire
                x: 1036
                y: 136
                width: 55
                height: 60
                source: "../images/newhampshire.png"
                fillMode: Image.PreserveAspectFit
            }
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
            Keys.onReturnPressed: backend.search(searchBox.text)

            TextField {
                id: searchBox
                width: 910
                placeholderText: "Search..."
            }

            Button {
                id: button
                x: 920
                text: qsTr("Search")
                onClicked: backend.search(searchBox.text)
            }
        }
    }
}
