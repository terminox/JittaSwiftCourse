import Foundation
import JavaScriptCore

example(of: "Basic") {
    print("Hello, World!")

    /* Swift is a static-typed language */
    var greeting: String = "Hello, Jittstors!"
    print(greeting)

    var c: Character = "a"
    var i: Int
    var f: Float = 0.123456789123456789
    var d: Double = 0.123456789123456789
    var b: Bool = true

    i = 10
    print(i)

    let name = "Tid"
    print("Hello, \(name)")
}

example(of: "Flow Control") {
    let today = 23
    if today == 25 {
        print("Today is Christmas")
    } else if today == 24 {
        print("Today is Christmas Eve")
    } else {
        print("Today is not Christmas")
    }
    
    let day = today == 25 ? "Christmas" : "Not Christmas"
    print(day)
    
    switch today {
    case 23:
        print("Today is Christmas")
        break
    case 24:
        print("Today is Chrismas Eve")
        break
    default:
        print("Today is not Christmas")
        break
    }
}

example(of: "Functions") {
    func functionName(a: Int, b: Int) -> Int {
        return a + b
    }
    
    let result = functionName(a: 10, b: 17)
    print(result)
}

example(of: "JS") {
    let fileName = "test.js"
    let dirs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
    if let dir = dirs.first {
        let path = dir.appending("/").appending(fileName)
        do {
            let jsString = try String(contentsOfFile: path)
            let context = JSContext()
            context?.evaluateScript(jsString)
            let function = context?.objectForKeyedSubscript("f")
            let result = function?.call(withArguments: [])
            print(result)
        } catch {
            print(error)
        }
    }
}
