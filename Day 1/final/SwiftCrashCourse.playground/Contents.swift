import UIKit

func example(of title: String, action: () -> Void) {
    print("---------- Example of: \(title) ---------")
    action()
    print("\n")
}

example(of: "Basic") {
    var str: String = "Hello, playground"
    var bool: Bool = true
    var int: Int = 665
    var d: Double = 0.1234123412341234
    var f: Float = 0.1234123412341234

    int = 10

    let c: Int = 7
    //c = 8

    print(str)

    let name = "Tid"
    print("Hello, \(name)")

    let today = 24
    //if today == 25 {
    //    print("Today is Christmas")
    //} else if today == 24 {
    //    print("Today is Christmas Eve")
    //} else {
    //    print("Today is not Christmas")
    //}

    switch today {
    case 24:
        print("Today is Christmas Eve")
        fallthrough
    case 25:
        print("Today is Christmas")
    default:
        print("Today is not Christmas")
    }

    // MARK: - Arrays
    var ints = [0, 1, 2, 3, 4, 5]
    let ints2: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    let ints3: Array<Int> = []
    //let ints4 = []

    ints[3]
    //ints[6]

    ints.append(8)
    ints.remove(at: 2)
    ints.insert(9, at: 0)

    // MARK: - Functions
    func greet(name: String) {
        print("Yooo, \(name)!!!!")
    }

    greet(name: "Cal")

    func greet2(_ name: String) {
        print("Yooo, \(name)!!!!")
    }

    greet2("Cal")

    func greet3(to name: String, and name2: String) {
        print("Yooo, \(name)!!!!")
        print("Hellllloooooo, \(name2)!!!!")
    }

    greet3(to: "P'Best", and: "P'Bird")

    func calculateArea(_ w: inout Float, _ h: inout Float) -> Int {
        return Int(w) * Int(h)
    }
    
    var width: Float = 34
    var height: Float = 18
    let area = calculateArea(&width, &height)
    print("Area is \(area)")
}

example(of: "Higher-Order Functions") {
    let ints = [1, 2, 3]
    let ints2 = ints.map { (int) -> Int in
        let result = int * 3
        return result
    }
    print(ints2)
    /*
     ints.map(int => {
        const result = int * 3
        return result
     })
     */
    
//    func f() -> (Int, Float) -> String {
//
//    }
}

example(of: "Classes") {
    class Car {
        private let id: UUID = UUID()
        let name: String
        var color: String {
            didSet {
                print("Someone changed your car's color from \(oldValue) to \(color)")
            }
        }
        
        var bodyPart: String?
        var cameraCounts: Int?
        
        init(name: String, color: String) {
            self.name = name
            self.color = color
        }
        
        init(_ props: [String]) {
            self.name = props[0]
            self.color = props[1]
        }
        
        func beep() {
            print("Beeeepppp")
        }
    }
    
    let car1 = Car(name: "Mazda 3", color: "Red")
    let car2 = Car(name: "Mazda 3", color: "Green")
    let car3 = Car(["Mazda 9", "Brown"])
    car3.beep()
    print(car3.name, car3.color)
    
    car3.color = "Blue"
    print(car3.color)
    car3.bodyPart
    
    var i: Int?
    
    class Animal {
        let name: String
        var child: Animal?
        
        init(name: String) {
            self.name = name
        }
    }
    
    let cat = Animal(name: "Meow")
    let kitten = Animal(name: "Kitty")
    cat.child = kitten
    let puss = Animal(name: "PussC")
    kitten.child = puss
    
//    func checkName() {
//        var ints: [Int] = []
//
//        guard !ints.isEmpty else {
//            return
//        }
//
////        print(name)
//        // blabla
//        //
//    }
    
    class Bird: Animal {
        
    }
    
    let falcon = Bird(name: "Falco")
}

example(of: "Structs") {
    struct Animal {
        let name: String
        var legs: Int
        
        func bark() {
            print("^T@#OIUHFD:SAUHDPUIQWHBD")
        }
    }
    
    var dog = Animal(name: "Woof", legs: 5)
    dog.bark()
    
    let dog2 = dog
    dog.legs = 7
    print(dog.legs, dog2.legs)
}

example(of: "Enums") {
    enum Partner: String {
        case merchant = "Merchant"
        case philips = "Philips"
        case jw = "Jitta Wealth"
        
        var id: Int {
            switch self {
            case .merchant:
                return 0
            case .philips:
                return 1
            case .jw:
                return 2
            @unknown default:
                return 99
            }
        }
    }
    
    enum NetworkResult {
        case result([Int])
        case error(String)
    }
    
    func handle(networkResult: NetworkResult) {
        switch networkResult {
        case .result(let data):
            print(data)
        case .error(let errorMessage):
            print(errorMessage)
        }
    }
    
    func fetch(url: String) {
        if url == "https://api.jittawealth.com" {
            handle(networkResult: .result([0, 1, 2]))
        } else {
            handle(networkResult: .error("Invalid URL"))
        }
    }
    
    fetch(url: "https://api.jittawealth.com")
    fetch(url: "https://api.jittawealth.co")
}

