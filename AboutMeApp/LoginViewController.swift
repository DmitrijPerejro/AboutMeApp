//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 03/11/2024.
//

import UIKit

let secretLogin = "root"
let secretPassword = "123"

final class ViewController: UIViewController {
    enum FieldType {
        case login
        case password
    }
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInButtonAction() {
        // я не знаю на сколько тут ок guard использовать
        // Возможно лучше бы сделать проще без них
        /*
            if isLoginValid(loginTextField.text ?? "") || isPasswordValig(passwordTextField.text ?? "") {
                onInvalidSignIn()
                return
            }
         */
        
        guard isLoginValid(loginTextField.text ?? "") else {
            onInvalidSignIn()
            return
        }
        
        guard isPasswordValig(passwordTextField.text ?? "") else {
            onInvalidSignIn()
            return
        }
        
        onSignIn()
    }
    
    @IBAction func forgotLoginAction() {
        onForgot(.login)
    }
    
    @IBAction func forgotPasswordAction() {
        onForgot(.password)
    }
    
    private func onSignIn() {
        
    }
    
    
    private func isLoginValid(_ value: String) -> Bool {
        secretLogin == value
    }
    
    private func isPasswordValig(_ value: String) -> Bool {
        secretPassword == value
    }
    
    private func onInvalidSignIn() {
        let alert = UIAlertController(title: "Ой :(", message: "Пароль или логин неверны", preferredStyle: .alert)
        let action = UIAlertAction(title: "Попробовать еще раз", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    private func onForgot(_ field: FieldType) {
        let title = field == .login ? "Логин" : "Пароль"
        let message = field == .login ? secretLogin : secretPassword
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Понятно", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
}
