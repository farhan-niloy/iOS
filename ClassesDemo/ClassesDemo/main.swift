
let skeleton = Enemy()

print(skeleton.health)

skeleton.move()
skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()

dragon.attackStrength = 20
dragon.wingSpan = 10
dragon.talk(", My theeth are swords! My claws are spears! My wings are hurricane")



dragon.attack()
print(dragon.attackStrength)
print(dragon.wingSpan)
dragon.move()
