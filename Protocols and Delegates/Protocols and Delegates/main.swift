//
//  main.swift
//  Protocols and Delegates
//
//  Created by Farhan Niloy on 4/20/24.
//

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSisuation() {
        print("Can you tell me what happened?")
    }

    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init (handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("CPR - on progress")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("CPR - on progress")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        print("Sings staying alive by the BeeGees....")
    }
    
    func useElectricDrill() {
        print("Whirrr....")
    }
}

let emilio = EmergencyCallHandler()
let pete = Surgeon(handler: emilio)

emilio.assessSisuation()
emilio.medicalEmergency()
