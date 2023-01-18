import UIKit
/*
let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()
var valor = 0
while random != numbers {
    print(numbers, " ", random)
    print(valor)
    random = numbers.shuffled()
    valor+=1
}
print(numbers, " ", random)*/



let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random != numbers
print("Hola1")
