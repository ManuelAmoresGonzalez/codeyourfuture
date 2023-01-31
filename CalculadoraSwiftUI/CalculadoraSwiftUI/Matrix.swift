//
//  Matrix.swift
//  CalculadoraSwiftUI
//
//  Created by Manuel Enrique Amores Gonzalez on 23/1/23.
//

import Foundation
import UIKit
import SwiftUI

struct Matrix {
    
    static let firstSectionData: [KeyboardButton] = [
    
        .init(tittle: "AC", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(tittle: "+/-", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(tittle: "%", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(tittle: "/", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .reset),
        .init(tittle: "7", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(7)),
        .init(tittle: "8", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(8)),
        .init(tittle: "9", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(9)),
        .init(tittle: "X", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.multiplication)),
        .init(tittle: "4", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(4)),
        .init(tittle: "5", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(5)),
        .init(tittle: "6", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(6)),
        .init(tittle: "-", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .reset),
        .init(tittle: "1", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(1)),
        .init(tittle: "2", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(2)),
        .init(tittle: "3", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(3)),
        .init(tittle: "+", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.sum)),
    ]
    
    static let secondSectionData: [KeyboardButton] = [
    
        .init(tittle: "0", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: true, type: .number(0)),
        .init(tittle: ",", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .reset),
        .init(tittle: "=", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .result),
    
    ]
    
    static let firstSectionGrid: (CGFloat) -> [GridItem] = { width in
        
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
    
    static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
        
        return [
            GridItem(.flexible(minimum: width*2), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
            
        ]
    }
}
