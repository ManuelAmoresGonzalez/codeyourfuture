//
//  Interactor.swift
//  VIPERPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import Foundation
import UIKit

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers( )
}

class UserInteractor: AnyInteractor{
    var presenter: AnyPresenter?
    
    func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        
                let task = URLSession.shared.dataTask(with: url) {data, _ , error in
                    
                    guard let data = data, error == nil else {
                        self?.presenter?.interactorDidFetchUsers(with: .failure(FetchError.failed))
                        return
                    }
                    
                    do{
                        let entities = try JSONDecoder().
                    }
                }
        
    }
    
    
}
