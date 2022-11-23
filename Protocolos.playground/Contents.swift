import UIKit

protocol UserProtocol{
    
    var name : String {get}
    var lastName : String{get}
    
    func getFullName() -> String
    
    func optionalMethod()
}

extension UserProtocol{
    func optionalMethod( ) {
        print(name)
    }
}


struct UserMode : UserProtocol{
    var name: String
    
    var lastName: String
    
    func getFullName() -> String {
        return name+" "+lastName
    }
    
   /* func optionalMethod() {
        print("Soy yo")
    }*/
    
}


let user = UserMode(name: "Manuel", lastName: "Amores")
user.getFullName()
user.optionalMethod()
