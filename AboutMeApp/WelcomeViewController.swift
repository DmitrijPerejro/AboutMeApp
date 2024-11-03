//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 04/11/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    var login: String!

    @IBOutlet weak var loginLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.text = login
    }
    
    @IBAction func logoutAction() {
        dismiss(animated: true)
    }
}
