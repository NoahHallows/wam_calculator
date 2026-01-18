from PySide6.QtCore import QObject, Slot, Signal

def add_two(x):
    return x + 2


class Calc(QObject):
    WamCalculated = Signal(int)
    def __init__(self):
        super().__init__()
        self.list_of_grades = []


    @Slot()
    def wam(self):
        sum = 0
        for grade in self.list_of_grades:
            sum = sum + grade

        average = sum/len(self.list_of_grades)
        print(average)
        self.WamCalculated.emit(average)
        return average
    @Slot(int)
    def add_unit(self, mark):
        self.list_of_grades.append(mark)

