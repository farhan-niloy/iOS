//
//  main.swift
//  Optionals
//
//  Created by Farhan Niloy on 4/19/24.
//

let myOptional: String?

myOptional = nil

struct MyOptional2 {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional2: MyOptional2?

myOptional2 = MyOptional2()

print(myOptional2?.property)
myOptional2?.method()

let text: String = myOptional ?? "Default Value"

print(text)
