protocol AdvancedLifeSupport {
    func performCPR()
    
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSitucation(){
        print("돠줄수있음?")
    }
    
    func medicalEmergenct(){
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("심폐소생술을 함")
    }
}

class Docter: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func useStethescope(){
        print("심장소리 듣기")
    }
    
    
    func performCPR(){
        print("심폐소생술을 함")
    }
}

class Surgeon: Docter{
    override func performCPR() {
        super.performCPR()
        print("노래를 틂")
    }
    
    func useElectricDrill(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

let angela = Surgeon(handler: emilio)

emilio.assessSitucation()
emilio.medicalEmergenct()
