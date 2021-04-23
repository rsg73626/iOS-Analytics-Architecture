//
//  LoginPresenter.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

public class LoginPresenter: LoginUserCaseOutput {
    
    // MARK: - Properties
    
    weak var view: LoginView?
    
    // MARK: - LoginUserCaseOutput functions
    
    func didLogin(withSuccess user: String) {
        view?.display(welcomeMessage: "Welcome \(user)!")
    }
    
    func didLogin(withError message: String) {
        view?.display(errorMessage: "E-mail or password incorrect.")
    }
    
    
}
