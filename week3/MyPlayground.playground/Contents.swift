import Cocoa

// A)      Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers.

let nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
var evenNums = nums.filter({$0 % 2 == 0})
print(evenNums)



// B)      In your Playground, define the following String:
//let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
//Iterate over sentence counting the vowels (a, e, i, o, u), ignoring the case.

let vowels = ["a","e","i","o","u"]
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
let lowerCasedSentence = sentence.lowercased()
var vowelCount = 0
for letter in lowerCasedSentence {
    if vowels.contains("\(letter)") {
        vowelCount += 1
    }
}
print(vowelCount)



// C)      Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
//0 * 0 = 0
//The format follows the number from the first array, space, followed by the character *, space,  followed by the number from the second array, space,  followed by =, space, followed by the result of the number from the first array multiplied by the number from the second array (just like the example above). There are a couple of ways to achieve this, but String Interpolation is the easiest.

var arrayOne: [Int] = [0, 1, 2, 3, 4]
var arrayTwo: [Int] = [0, 1, 2, 3, 4]
var firstMultiple = 0
var secondMultiple = 0
for index in 0 ..< arrayOne.count {
    firstMultiple = arrayOne[index]

    for indexTwo in 0 ..< arrayTwo.count {
        secondMultiple = arrayTwo[indexTwo]
        print("\(firstMultiple) * \(secondMultiple) = \(firstMultiple * secondMultiple)")
    }
}



// D)   Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print: “The average of the values in the array is <average>.” Where <average> is the calculated average. If the array is nil, print: “The array is nil. Calculating the average is impossible.” Note: the average is calculated by summing the values in the array and dividing by the number of elements. Call this function two times. First, pass in the nums array from part A and second by passing an optional array of Int.

func average(array: [Int]?) {
    if array != nil {
        var sum = 0
        var count = array!.count
        var average = 0
        for element in array! {
            sum += element
        }
        average = sum / count
        print("The average of the values in the array is \(average)")
    } else {
        print("The array is nil. Calculating the average is impossible.")
    }
}
average(array: nums)
let input: [Int]? = nil
average(array: input)



// E)   Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
// Name: <firstName> <lastName>, Age: <age>
//Create an instance of Person called person. Pass your first name, last name, and age for the properties. Finally, call the method details.

struct Person {
    var firstName: String
    var lastName: String
    var age: Int
    func details() {
        print("Name: \(firstName) \(lastName), Age: \(age)")
    }
}
var catherine = Person(firstName: "Catherine", lastName: "Salinger", age: 28)
catherine.details()
   


// F)    Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
// Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.
//Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student.

class Student {
    
    var person: Person
    var grades: [Int] = []
    
    func calculateAverageGrade() -> Double {
        return 0.0
    }
    
    func details() {
        let average = calculateAverageGrade()
        print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(average)")
    }
    
    init(person: Person, grades: [Int]) {
        self.person = person
        self.grades = grades
    }
}

let person = Person(firstName: "Matt", lastName: "LeBlanc", age: 52)
var student = Student(person: person, grades: [34, 94, 99, 81, 100, 79])
student.details()


