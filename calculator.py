def add_two(x):
    return x + 2

def wam(list_of_grades):
    sum = 0
    for grade in list_of_grades:
        sum = sum + grade
        
    average = sum/len(list_of_grades)
    return average

