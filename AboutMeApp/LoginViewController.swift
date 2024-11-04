//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 03/11/2024.
//

import UIKit


final class LoginViewController: UIViewController {
    enum FieldType {
        case login
        case password
    }
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let secretLogin = "root"
    private let secretPassword = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let compareLogin = loginTextField.text ?? ""
        let comparePassword = passwordTextField.text ?? ""
        
        guard
            isEqualValue(compareLogin, secretLogin),
            isEqualValue(comparePassword, secretPassword) else {
                onInvalidSignIn()
                return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.login = loginTextField.text
    }
        
    
    @IBAction func forgotLoginAction() {
        onForgot(.login)
    }
    
    @IBAction func forgotPasswordAction() {
        onForgot(.password)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func isEqualValue(_ first: String, _ second: String) -> Bool {
        first == second
    }
    
    private func onInvalidSignIn() {
        let alert = UIAlertController(title: "Ой :(", message: "Пароль или логин неверны", preferredStyle: .alert)
        let action = UIAlertAction(title: "Попробовать еще раз", style: .cancel) { _ in
            self.passwordTextField.text = ""
        }
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
