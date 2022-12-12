//
//  Presenter.swift
//  VIPERPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import Foundation
import UIKit

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    
    var interactor: AnyInteractor? { get set }
    
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter{
    
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        switch result{
        case .success(let users):
            view?.update(with: users)
        case .failure:
            view?.update(with: "Something went wrong")
            
        }
    }
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    
}
