//
//  main.swift
//  ARC.Homework
//
//  Created by Aleksandr Kan on 25.05.2021.
//


//My HOMEWORK
print("")

class BaseHuman {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) deinitialized")
    }
    
}


class Family {
    var father: Father
    var mother: Mother
    var child: [Children]?
    
    init(father: Father, mother: Mother, child: [Children]?) {
        self.father = father
        self.mother = mother
        self.child = child
        
        self.father.family = self
        self.father.wife = mother
        
        self.mother.husband = father
        self.mother.child = child
        
        if let children = self.child {
            for child in children {
                child.father = father
                child.mother = mother
            }
        }
    }
    
    func familyInfo() {
        print("""
            Father: \(father.name)
            Mother: \(mother.name)
            Child: \(allChild())
            """)
        }
    
    
    func allChild() -> String {
        var listName = ""
        if let child = child {
            for i in child {
                listName += i.name + "; "
            }
            return listName
        } else {
            return "empty list child"
        }
            //return listName
        
    }
    
    
    deinit {
        print("Family is deinitialized!")
    }
    
}


class Father: BaseHuman {
    weak var family: Family!
    var wife: Mother!
    
    lazy var printMother: () -> () = { [unowned wife] in
        print("Mother \(wife!.name)")
    }
    
    lazy var printFamily: () -> () = {
        [unowned family] in
        print("Father print all family:")
        family!.familyInfo()
    }
    
    lazy var printChild: () -> () = {
        [unowned family] in
        print("Father print Child: \(family!.allChild())")
    }
    
}


class Mother: BaseHuman {
    weak var husband: Father!
    var child: [Children]!
    
}


class Children: BaseHuman {
   weak var father: Father!
   weak var mother: Mother!
    
    var myBroAndSis: [Children] {
        let kids = mother.child.filter({$0.name != self.name})
        return kids
    }
    
    func fatherBuyToy() {
        print("Father \(father.name) buy toy for me!")
    }
    
    func motherGiveCandy() {
        print("Mother \(mother.name) give me CANDY!")
    }
    
    func sayToBroAndSis() {
        for i in myBroAndSis {
            print("Hey \(i.name) give me your toy!")
        }
    }
    
}


if true {
    let family_1 = Family(father: Father(name: "Jack"), mother: Mother(name: "Anna"), child: [Children(name: "Sam"), Children(name: "Nick")])
    
    family_1.familyInfo()
    print("")
    family_1.father.printChild()
    print("")
    family_1.father.printFamily()
    print("")
    
    for child in family_1.child! {
        child.fatherBuyToy()
        child.motherGiveCandy()
        child.sayToBroAndSis()
    }
    
    print("")
    
}
