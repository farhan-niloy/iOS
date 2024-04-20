//
//  TipsBrain.swift
//  Tipsy
//
//  Created by Farhan Niloy on 4/19/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct TipsBrain {
    func calculateTips(_ bill: Float,  _ cut: Float, _ person: Float) -> Float {
        let finalResult = (bill*cut)/person
        
        return finalResult
    }
}
