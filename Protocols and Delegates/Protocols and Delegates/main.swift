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

struct Pramadic: AdvancedLifeSupport {
    
    init (handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("CPR - Done!")
    }
}
