//
//  LoginView.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import Foundation

protocol LoginView: class {
    
    func display(welcomeMessage message: String)
    func display(errorMessage message: String)
    
}
