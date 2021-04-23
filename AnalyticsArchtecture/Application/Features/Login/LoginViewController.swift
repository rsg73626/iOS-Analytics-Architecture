//
//  LoginViewController.swift
//  AnalyticsArchtecture
//
//  Created by Renan Germano on 23/04/21.
//

import UIKit

class LoginViewController: UIViewController, LoginView {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var indicator: UIActivityIndicatorView!
    @IBOutlet private weak var userTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    
    // MARK: - Properties
    
    var login: ((String, String)->Void)?
    var viewDisplayed: (()->Void)?
    
    // MARK: - Initializers
    
    public init() {
        super.init(nibName: "LoginView", bundle: Bundle(for: LoginViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        indicator.stopAnimating()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewDisplayed?()
    }
    
    // MARK: - Actions
    
    @IBAction func didPressEnter() {
        indicator.startAnimating()
        login?(userTextField.text ?? "", passwordTextField.text ?? "")
    }
    
    
    // MARK: - LoginView functions
    
    func display(welcomeMessage message: String) {
        let alert = UIAlertController(title: "Success", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        show(alert, sender: self)
        indicator.stopAnimating()
    }
    
    func display(errorMessage message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        show(alert, sender: self)
        indicator.stopAnimating()
    }
    
}
