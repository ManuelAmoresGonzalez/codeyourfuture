//
//  Model.swift
//  CalculadoraSwiftUI
//
//  Created by Manuel Enrique Amores Gonzalez on 23/1/23.
//

import Foundation
import SwiftUI

struct KeyboardButton {
    let tittle: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}

enum ButtonType {    
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType {
    case sum
    case multiplication
    
}
