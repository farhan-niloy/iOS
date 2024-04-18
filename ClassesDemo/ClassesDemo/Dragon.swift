
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(_ speech: String) {
        print("Says \(speech)")
    }
    
    override func move() {
        print("Fly forward")
    }
    
    override func attack() {
        super.attack()
        print("Spit fire, does 15 damage!")
    }
}
