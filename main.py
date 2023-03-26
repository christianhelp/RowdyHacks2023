import sys

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtCore import QObject, pyqtSignal, pyqtSlot
from threadDriver import driver


class Backend(QObject):
    buttonClicked = pyqtSignal()

    @pyqtSlot(str)
    def search(self, userInput):
        driver(userInput)


def drawState(stateName, matchPercent):
    print('str', stateName)
    stateObject = False
    if usMap.findChild(QObject, stateName) is None:
        stateObject = True
    print(stateObject)


app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()

backend = Backend()

engine.rootContext().setContextProperty("backend", backend)

engine.quit.connect(app.quit)
engine.load('./ui/main.ui.qml')

usMap = engine.rootObjects()[0].children()[0].children()[0]
print('usMap', type(usMap))

states = usMap.children()
print('states', type(states))

for state in states:
    print('state', type(state))

sys.exit(app.exec())
