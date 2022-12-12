//
//  NetworkService.swift
//  MVCPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    private init(){}
    
    private var user: User?
    
    func login( email: String, password: String, completion: @escaping(Bool) -> Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com"  && password == "password"{
                    self.user = User(firstName: "Pablo", lastName: "Rivera", email: "test@test.com", age: 38, location: Location(lag: 34.2321, lng: 22.3458))
                    completion(true)
                }else{
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
    
    func getLoggedInUser() -> User{
        return user!
    }
}
