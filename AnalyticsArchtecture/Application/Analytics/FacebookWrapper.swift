//
//  FacebookWrapper.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

// import FacebookAnalyticsSDK

class FacebookWrapper: LoginUserCaseOutput {
    
    // MARK: - LoginUserCaseOutput functions
    
    func didLogin(withSuccess user: String) {
        // Log user login success event.
        print("Log user login success event.")
    }
    
    func didLogin(withError message: String) {
        // Log user login failure event.
        print("Log user login failure event.")
    }
    
}
