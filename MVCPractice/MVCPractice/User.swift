//
//  User.swift
//  MVCPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import Foundation


struct User{
    let firstName: String
    let lastName: String
    let email: String
    let age: Int
    let location: Location    
}

struct Location{
    let lag: Double
    let lng: Double
}
