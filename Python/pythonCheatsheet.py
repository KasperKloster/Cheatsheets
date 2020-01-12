# Data Types
# str
string = "This is a string"
int = 10
float = 3.14
bool = True
# Get type
print(type(int))

# Variables
varOne = 1
varTwo = 2
print("varOne + varTwo is: " + str(varOne + varTwo))

# Functions
# Defining Function
def addTwoNumbers(numberOne, numberTwo):
    print(numberOne + numberTwo)
# Calling Function
addTwoNumbers(int, float)

# Classes
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def greeting(self):
    print("Hello, my name is " + self.name + " I'm "  + str(self.age) + " years old.")

person = Person("John", 99)
person.greeting()
