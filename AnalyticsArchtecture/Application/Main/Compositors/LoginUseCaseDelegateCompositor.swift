//
//  LoginUseCaseDelegateCompositor.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

class LoginUseCaseDelegateCompositor: LoginUserCaseOutput {
    
    // MARK: - Properties
    
    var outputs = [LoginUserCaseOutput]()
    
    // MARK: - LoginUserCaseOutput functions
    
    func didLogin(withSuccess user: String) {
        outputs.forEach { $0.didLogin(withSuccess: user) }
    }
    
    func didLogin(withError message: String) {
        outputs.forEach { $0.didLogin(withError: message) }
    }
    
}
