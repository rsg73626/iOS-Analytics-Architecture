//
//  LoginAssembler.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import UIKit

public struct LoginAssembler {
    
    private init() { }
    
    public static func assemble() -> UIViewController {
        let view = LoginViewController()
        let useCase = LoginUseCase()
        let presenter = LoginPresenter()
        let firebase = FirebaseWrapper()
        let facebook = FacebookWrapper()
        let useCaseDelegateCompositor = LoginUseCaseDelegateCompositor()
        useCaseDelegateCompositor.outputs.append(presenter)
        useCaseDelegateCompositor.outputs.append(firebase)
        useCaseDelegateCompositor.outputs.append(facebook)
        view.login = useCase.login
        view.viewDisplayed = {
            firebase.logViewDisplay("LoginView")
        }
        useCase.output = useCaseDelegateCompositor
        presenter.view = view
        return view
    }
    
}
