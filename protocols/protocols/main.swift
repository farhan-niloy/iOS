//
//  main.swift
//  protocols
//
//  Created by Farhan Niloy on 4/20/24.
//

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}


class Eagle: Bird, CanFly{
    func fly() {
        print("Eagle flaps its wings and lifts off into the sky.")
    }
    
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyDemo(flyObject: CanFly) {
        flyObject.fly()
    }
}

class Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}


let myEagle = Eagle()

myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()

myPenguin.swim()
myPenguin.layEgg()

let museum = FlyingMuseum()
let airplane = Airplane()


museum.flyDemo(flyObject: myEagle)
museum.flyDemo(flyObject: airplane)


airplane.fly()
