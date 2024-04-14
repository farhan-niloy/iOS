import UIKit

func exercise() {
    let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
    
    let password = alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)] + alphabet[Int.random(in: 0 ... 25)]
    
    print(password)
}

var result = exercise()

print(result)
