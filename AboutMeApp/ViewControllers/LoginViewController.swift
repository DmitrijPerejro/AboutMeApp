//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 03/11/2024.
//

import UIKit


final class LoginViewController: UIViewController {
    let user = User.fetchUser()
    
    enum FieldType {
        case login
        case password
    }
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.text = user.login
        passwordTextField.text = user.password
    }
            
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let compareLogin = loginTextField.text ?? ""
        let comparePassword = passwordTextField.text ?? ""
        
        guard
            isEqualValue(compareLogin, user.login),
            isEqualValue(comparePassword, user.password) else {
                onInvalidSignIn()
                return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { vc in
            if let welcomeVC = vc as? WelcomeViewController {
                welcomeVC.user = user
            } else if let bioVC = vc as? BioViewController {
                bioVC.person = user.person
            } else if let navigationController = vc as? UINavigationController,
                      let motorcycleVC = navigationController.viewControllers.first as? MotorcycleViewController {
                motorcycleVC.motorcycle = user.person.motorcycle
            }
        }
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
        let alert = makeAlert(
            title: "Ой :(",
            message: "Пароль или логин неверны",
            action: UIAlertAction(
                title: "Попробовать еще раз",
                style: .cancel) { _ in
                    self.passwordTextField.text = ""
                }
            )
        present(alert, animated: true)
    }
    
    private func onForgot(_ field: FieldType) {
        let title = field == .login ? "Логин" : "Пароль"
        let message = field == .login ? user.login : user.password
        
        let alert = makeAlert(
            title: title,
            message: message,
            action: UIAlertAction(title: "Понятно", style: .cancel)
        )
        present(alert, animated: true)
    }
    
    private func makeAlert(title: String, message: String, action: UIAlertAction) -> UIAlertController {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        alert.addAction(action)
        
        return alert
    }
}
