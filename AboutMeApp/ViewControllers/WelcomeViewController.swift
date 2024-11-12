//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 04/11/2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.text = user.login
        nameLabel.text = user.person.name
    }
    
    @IBAction func logoutAction() {
        dismiss(animated: true)
    }
}
