//
//  FirebaseWrapper.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

// import FirebaseAnalyticsSDK

class FirebaseWrapper: LoginUserCaseOutput {
    
    func didLogin(withSuccess user: String) {
        // Log user login success event.
        print("Log user login success event.")
    }
    
    func didLogin(withError message: String) {
        // Log user login failure event.
        print("Log user login failure event.")
    }
    
    func logViewDisplay(_ name: String) {
        // Log view display event.
        print("Log view display event.")
    }
    
}
