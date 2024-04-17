//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Farhan Niloy on 4/17/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
