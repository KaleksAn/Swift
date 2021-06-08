//
//  main.swift
//  Homework_23_Part2
//
//  Created by Aleksandr Kan on 07.06.2021.
//

var familyArray = [Human]()

class Human {
    var father: Man?
    var mother: Woman?
    var brothers: [Man]?
    var sisters: [Woman]?
    var animal: [Animal]?
    var name: String
    
    init(name: String) {
        self.name = name
        familyArray.append(self)
    }
    
//    func setProperty(father: Man, mother: Woman, brother: [Man]?, sister: [Woman]?, animal: [Animal]?) {
//        self.father = father
//        self.mother = mother
//        self.brothers = brother
//        self.sisters = sister
//        self.animal = animal
//    }
    
    
    func totalUnclesAndAunt() {
        var uncles = 0, aunts = 0, brothers = 0, sisters = 0
        
        
        if let uncle = self.father?.brothers {
            uncles += uncle.count
            
        }
        
        if let uncle2 = self.mother?.brothers {
            uncles += uncle2.count
        }
        
        
        if let aunt = self.father?.sisters {
            aunts += aunt.count
            
        }
        
        if let aunt2 = self.mother?.sisters {
            aunts += aunt2.count
        }
       
        if let bro = self.brothers {
            brothers += bro.count
        }
        
        if let sister = self.sisters {
            sisters += sister.count
        }
        
        
        print("Uncles: \(uncles); Aunts: \(aunts); Brothers: \(brothers); Sisters: \(sisters)")
        
    }
    
    
    
}


class Woman: Human {
    
    func indicationSofa() {
        print("\(self.name) indication move sofa!")
    }
}


class Man: Human {
    
    func moveSofa() {
        print("Man \(self.name) move sofa!")
    }
    
}


let human_01 = Man(name: "Igor")
let human_02 = Man(name: "Vova")
let human_03 = Man(name: "Misha")
let human_04 = Man(name: "Sasha")
let human_05 = Man(name: "Lesha")//
let human_06 = Man(name: "Petya")//
let human_07 = Man(name: "Vitya")
let human_08 = Man(name: "Vasya")
let human_09 = Man(name: "Andrey")
let human_10 = Man(name: "Sergey")

let human_11 = Woman(name: "Ira")
let human_12 = Woman(name: "Yulya")
let human_13 = Woman(name: "Lera")
let human_14 = Woman(name: "Katya")
let human_15 = Woman(name: "Aleksandra")
let human_16 = Woman(name: "Vika")
let human_17 = Woman(name: "Natasha")
let human_18 = Woman(name: "Alina")
let human_19 = Woman(name: "Sveta")
let human_20 = Woman(name: "Tanya")

//Parents
human_01.father = human_02
human_01.mother = human_11


//Brothers
human_01.brothers = [human_03, human_04, human_04]

//GrandFather's and Grandmothers's

//Father line
human_01.father?.father = human_06
human_01.father?.mother = human_12

//Mother line
human_01.mother?.father = human_07
human_01.mother?.mother = human_18


//Brother's and sister's
human_01.father?.sisters = [human_13, human_14, human_15, human_16, human_17]
human_01.mother?.sisters = [human_19, human_20]
human_01.mother?.brothers = [human_08, human_09, human_10]

human_01.animal = [Cat(name: "Persik"), Cat(name: "Smoke")]
human_02.animal = [Dog(name: "Sharik"), Parrot(name: "Kesha")]
human_03.animal = [Dog(name: "Jack"), Dog(name: "Rex")]
human_04.animal = [Rat(name: "Jarry"), Cat(name: "Tom")]
human_05.animal = [Fish(name: "Nemo")]
human_06.animal = [Dog(name: "Bobik")]
human_07.animal = [Cat(name: "Ferz")]
human_08.animal = [Cat(name: "Gosha")]
human_09.animal = [Cow(name: "Fred")]
human_10.animal = [Cow(name: "Cow 1"), Cow(name: "Cow 2"), Cow(name: "Cow 3"), Cow(name: "4"), Cow(name: "Cow 5")]
human_15.animal = [Dog(name: "Erick")]
human_18.animal = [Dog(name: "Kashtan")]
human_20.animal = [Parrot(name: "Sparrow")]


var animalArray = [Animal]()


//Function for detected gender
func genderDetected(arrayPeople: [Human]) -> (countMan: Int, countWoman: Int) {
    var countMan = 0, countWoman = 0
    
    for human in arrayPeople {
     
        switch human {
            case let man as Man:
                countMan += 1
                man.moveSofa()
            case let woman as Woman:
                countWoman += 1
                woman.indicationSofa()
            default:
                countMan += 0
                countWoman += 0
        }
        
        if let animal = human.animal {
            animalArray.append(contentsOf: animal)
        }
        
    }
    
    return (countMan, countWoman)
}


let (countM, countF) = genderDetected(arrayPeople: familyArray)

print("Male: \(countM) Female: \(countF)")

human_01.totalUnclesAndAunt()



//3

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func animalSay() {
        print("Animal \(self.name) say.")
    }
    
}


class Cat: Animal {
    override func animalSay() {
        print("Cat \(self.name) say: Mrr... Mrr...")
    }
}

class Dog: Animal {
    override func animalSay() {
        print("Dog \(self.name) say: Gaf - Gaf")
    }
}

class Fish: Animal {
    override func animalSay() {
        print("Fish \(self.name) nothing say")
    }
}

class Rat: Animal {
    override func animalSay() {
        print("Rat \(self.name) say: Give me chees")
    }
}


class Parrot: Animal {
    override func animalSay() {
        print("Parot \(self.name) say: One, two, three...")
    }
}


class Cow: Animal {
    override func animalSay() {
        print("Cow \(self.name) say: Mu - mu")
    }
}




func animalCount(array: [Animal]) {
    var cat = 0, dog = 0, fish = 0, cow = 0, rat = 0, parrot = 0
    for animal in array {
        switch animal {
        case is Dog:
            dog += 1
            animal.animalSay()
        case is Cat:
            cat += 1
            animal.animalSay()
        case is Fish:
            fish += 1
            animal.animalSay()
        case is Cow:
            cow += 1
            animal.animalSay()
        case is Parrot:
            parrot += 1
            animal.animalSay()
        case is Rat:
            rat += 1
            animal.animalSay()
        default:
            break
        }
        
        
    }
    
    print("TOTAL COUNT ANIMALS")
    print("Dogs = \(dog)")
    print("Cats = \(cat)")
    print("Fishes = \(fish)")
    print("Cow = \(cow)")
    print("Rats = \(rat)")
    print("Parrots = \(parrot)")


}

print(animalArray.count)

animalCount(array: animalArray)
