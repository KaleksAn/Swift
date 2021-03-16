//Homework for Swift Developers Group
//Task 1

myMark: for i in 0...200 {
    print(" i in Loop for = \(i)")
    mySecondMark:   for y in 0...20 {
        if y == 15 {
            //break myMark
            //break
            continue mySecondMark
        }
        print("y in Loop for = \(y)")
    }
}


//Task_02

var myAge = 27
let youName = "John"

//for if-else if
if myAge == 7 {
    print("You go to school!")
} else if myAge == 16 || myAge == 17 {
    print("You can go to сollege or universite")
} else if myAge == 65 || myAge == 60 {
    print("You pension!")
} else {
    print("Invalid value")
}


//for switch
switch myAge {
    case 6, 7, 8:
        print("You can go to school!")
    case 16, 17, 18:
        print("You can go to college or universite")
    case 19...30:
        print("You just young!)")
    case 55...65:
        print("You pension!")
    default:
        print("Please, valid value!")
}


switch (myAge, youName) {
    case let (18...30, name) where name == "Alex":
        print("You my fried!")
    case (18...30, let name) where name == "Dmitriy":
        print("You my brother!")
    case (_, "John"), (_, "Fred"), (_, "Ferz"), (_, "Markeloff"):
        print("You my teammate on CS GO!")
    default:
        print("i don't know you!")
}


//My Test
//Create array with letters and array consonats
let letA = "a".unicodeScalars
let startAval = letA[letA.startIndex].value
var arrayConsonats = [Character]()

let arrayLetters: [Character] = (0..<26).map{
    i in Character(UnicodeScalar(startAval + i)!)
}

for i in arrayLetters {
    switch i {
        case "a", "e", "o", "i", "u":
            continue
        case "b", "c", "d", "f", "g", "k", "l", "m", "n", "y", "t", "q", "p", "x", "w", "z", "s", "v":
            arrayConsonats.append(i)
        default:
            continue
    }
}


for i in arrayConsonats {
    print("i = \(i)")
}


//Task 03
//Use loop for
//Use closed range

print("\nTask 03")
print("Use all loop's for")
for i in 0...30 {
    print("\(i)")
    if i == 30 {
        print("GO!")
    }
}

//Just use loop without var i
print("\nPrint Hello World 10 time")
for _ in 0...10 {
    print("Hello World!")
}


//half-closed range on loop
//Print half-closed range

for i in 0..<10 {
    print("i = \(i)")
}

for i in 0..<arrayConsonats.count {
    print("value from array \(arrayConsonats[i])")
}


//Use stride on loop for

//half-closed range in stride loop for
for i in stride(from: 30, to: 0, by: -2) {
    print("Stride i equal \(i)")
}

for i in stride(from: 0, to: arrayConsonats.count - 1, by: 2) {
    print("Half-closed stride on array: \(arrayConsonats[i])")
}



//Closed range
for i in stride(from: 0, through: 15, by: 1) {
    print("Half-stride range on loop: \(i)")
}

for i in stride(from: arrayConsonats.count-1, through: 0, by: -3) {
    print("Print consonant array with stride: \(arrayConsonats[i])")
}



//Task 04

var myRating = Int.random(in: 1...13)

//if -else
if myRating == 1 || myRating == 2 || myRating == 3 || myRating == 4 || myRating == 5 {
    print("Exam FILED!")
} else if myRating == 6 || myRating == 7 {
    print("Satisfactorily")
} else if myRating == 8 || myRating == 9 || myRating == 10 || myRating == 11 {
    print("You rating is GOOD!")
} else if myRating == 12 {
    print("Perfect!")
} else {
    print("Invalid value")
}


//Switch

switch myRating {
    case 1, 2, 3, 4, 5:
        print("Exam FILED!")
    case 6, 7:
        print("Satisfactorily")
    case 8, 9, 10, 11:
        print("You rating is GOOD!")
    case 12:
        print("Perfect!")
    default:
        print("Please, enter valid value on switch")
}


//Task 05
var myFamily = ["Alexander", "Vladimir", "Elena", "Igor", "Irina", "Tatiana", "Alexey", "Evgeniy", "Alena", "Nadejda"]
var newFamilyArray = [String]()

for i in 0...myFamily.count - 1 {
    newFamilyArray.append(myFamily[i])
}
newFamilyArray.sorted(by: >)




//myFamily.sort()



//Alexey Skutarenko
//Task 01

//Ver 1.0
var consonants = 0
var vowels = 0
var otherSymbols = 0

var symbols = (consonants: 0, vowels: 0, otherSymbols: 0)

let myString = """
                 One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
                 He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by a
                """

for i in myString {
    switch i {
        case "A", "E", "U", "I", "O":
            //vowels += 1
            symbols.vowels += 1
        case "a", "e", "u", "i", "o":
            symbols.vowels += 1
        case "B", "C", "D", "F", "G", "P", "K", "L", "M", "R", "S", "H", "J", "T", "Q", "V", "W", "Y", "Z", "N":
            symbols.consonants += 1
        case "b", "c", "d", "f", "g", "p", "k", "l", "m", "r", "s", "h", "j", "t", "q", "v", "w", "y", "z", "n":
            symbols.consonants += 1
        default:
            symbols.otherSymbols += 1
    }
}

print("\n\t\t\tStatistics:")
print("Vowel's: \(symbols.vowels)")
print("Consonant's: \(symbols.consonants)")
print("Other symbol's: \(symbols.otherSymbols)")







//ver 2.0

let consonantsDict = ["b": "b", "c": "c", "d": "d", "f": "f", "g": "g", "p": "p", "k": "k", "l": "l", "m": "m",
                    "r": "r", "s": "s", "h": "h", "j": "j", "t": "t", "q": "q", "v": "v", "w": "w", "y": "y", "z": "z", "n": "n"]
let vowelDict = ["a": "a", "e": "e", "u": "u", "o": "o", "i": "i"]

var countConsonants = 0
var countVowel = 0
var countOther = 0


for i in myString {
    let myLett = String(i)
    
    switch myLett {
        case _ where vowelDict[myLett.lowercased()] != nil:
            countVowel += 1
        case _ where consonantsDict[myLett.lowercased()] != nil:
            countConsonants += 1
        default:
            countOther += 1
    }
}

print("Count vowel's = \(countVowel)")
print("Count consonatn's = \(countConsonants)")
print("Count other's = \(countOther)")







//Task 02
var numAge = Int.random(in: 1...80)

switch numAge {
    case 1...6:
        print("You child")
    case 7..<17:
        print("You school-child")
    case 17...21:
        print("You student")
    case 21...30:
        print("You just young man")
    case 30..<55:
        print("Family man")
    case 55...70:
        print("You just pension man")
    default:
        print("Invalid value")
}









//Task 03
//У вас есть имя отчество и фамилия студента (русские буквы).
//Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии.
//В противном случае обращайтесь к нему по полному имени.

//1.0
let name = "Дмитрий"
let surname = "Ким"
let patronymic = "Олегович"

let nameTuple = (name, surname, patronymic)

switch nameTuple {
    case _ where nameTuple.0.starts(with: "А") || nameTuple.0.starts(with: "О"):
        print("Уважаемый \(nameTuple.0), здравствуйте!")
    case _ where nameTuple.2.starts(with: "В") || nameTuple.2.starts(with: "Д"):
        print("Уважаемый \(nameTuple.0) \(nameTuple.2), вам посылка.")
    case _ where nameTuple.1.starts(with: "Е") || nameTuple.1.starts(with: "З"):
        print("Абонент \(nameTuple.1), ваш долг на сегодняшний день: 20.000.000 рублей")
    default:
        print("Пользователь \(nameTuple.1) \(nameTuple.0) \(nameTuple.2)")
}


//1.2
switch (name, surname, patronymic) {
    case (let n, _, _) where n.starts(with: "А") || n.starts(with: "Д"):
        print("Студент \(n)")
    case (_, _, let p) where p.starts(with: "О") || p.starts(with: "С"):
        print("Пассажир \(name) \(patronymic)")
    case (_, let s, _) where s.starts(with: "Т") || s.starts(with: "К"):
        print("Player \(s)")
    default:
        print("Winner \(surname) \(name) \(patronymic)")
}



//Task 04
//Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры).
//Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.


let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "K"]
let randomNumber = Int.random(in: 1...10)


//let myShip = ("T", 0)
let myShip = (alphabet.randomElement(), randomNumber)

switch myShip {
    case _ where myShip.0!.contains("A") && myShip.1 == 1:
        print("Hit")
    case _ where myShip.0!.contains("B") && myShip.1 == 2:
        print("Hit")
    case _ where myShip.0!.contains("G") && myShip.1 == 6:
        print("Destroyed!")
    case ("E", 3...5):
        print("Hit into middle ship!")
    case ("K", 9):
        print("Ship destroyed!")
    case ("I", 2...3):
        print("Ship Injured!")
    case let (letter, number) where letter == "D" && number == 2:
        print("You hit!")
    case let (letter, number) where letter == "C" && number == 3:
        print("Again hit")
    default:
        print("You missed")
}


//a b c d e f g h i j k l m n o p q r s t u v w x y z
//"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"







