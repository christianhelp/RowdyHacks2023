import sys

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtCore import QObject, pyqtSignal, pyqtSlot

class Backend(QObject):
    buttonClicked = pyqtSignal()
    
    @pyqtSlot(str)
    def search(self, str):
        threadDriver(str)



def drawState(stateName,matchPercent):
    print('str', str)
    stateObject = False
    if usMap.findChild(QObject, str) is None:
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