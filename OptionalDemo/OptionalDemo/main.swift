let myOptional : String?
myOptional = nil

var text : String = myOptional! // error

if myOptional != nil {
    text = myOptional!
}

if let safeOptional = myOptional {
    let text2: String = safeOptional
    text = safeOptional
}

let text2 : String = myOptional ?? "nil"

struct MyOptional2 {
    var property = 123
    func method() {
        print("dddd")
    }
}

let myOptional2 : MyOptional2?
myOptional2 = MyOptional2()
print(myOptional2?.method())
