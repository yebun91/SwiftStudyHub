protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true

    func layEgg() {
        if isFemale {
            print("the bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("the bird flaps its wings and lifts off into the sky.")
    }

    func soar() {
        print("the eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("the penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct AirPlane: CanFly {
    func fly() {
        print("the airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()

myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()

myPenguin.layEgg()
myPenguin.swim()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)

let myPlane = AirPlane()
