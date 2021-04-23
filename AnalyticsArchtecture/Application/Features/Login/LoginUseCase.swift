//
//  LoginUseCase.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

protocol LoginUserCaseOutput: class {
    
    func didLogin(withSuccess user: String)
    func didLogin(withError message: String)
    
}

class LoginUseCase {
    
    // MARK: - Properties
    
    var output: LoginUserCaseOutput?
    private var didSuccessed: Bool = false
    
    // MARK: - Util functions
    
    func login(user: String, password: String) {
        // Perform login using some service...
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { [weak self] timer in
            timer.invalidate()
            if self?.didSuccessed ?? false {
                self?.output?.didLogin(withSuccess: "Christofer")
            } else {
                self?.output?.didLogin(withError: "User of password invalid")
            }
            self?.didSuccessed = !(self?.didSuccessed ?? false)
        }
    }
    
    
}
