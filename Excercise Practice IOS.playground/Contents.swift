import UIKit
import Foundation

func swapTwoStrings( _ a: inout String, _ b: inout String){
    let tempA = a
    a = b
    b = tempA
}

var valueA = "Suscribete"
var valueB = "SwiftBeta"

swapTwoStrings(&valueA, &valueB)

print("El valor de A es: \(valueA) y el de B es: \(valueB)")


func SumDigits<T>(_ data: T){
    var newArray = [data]
    var resultadoFinal = 0
    for elem in newArray{
        if T.self is String.Type{
            
            let valor: String = elem as! String //Convertir a string
            var digits = valor.compactMap({Int(String($0))})//Convertir a array de enteros
            for i in digits{
                resultadoFinal = resultadoFinal + i
            }
        }else{
            let valor: Array = elem as! Array<Int>
            for i in valor{
                resultadoFinal = resultadoFinal + i
            }
        }
    }
    print(resultadoFinal)
}


var arreglo = [1,3,3,10]

var string = "12345"

SumDigits(string)

SumDigits(arreglo)






