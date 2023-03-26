import sys

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtCore import QObject, pyqtSignal, pyqtSlot

class Backend(QObject):
    buttonClicked = pyqtSignal()
    
    @pyqtSlot(str)
    def search(self, str):
        print(str)

app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()

backend = Backend()

engine.rootContext().setContextProperty("backend", backend)

engine.quit.connect(app.quit)
engine.load('./ui/main.ui.qml')

sys.exit(app.exec())