//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 06/11/2024.
//

import UIKit

final class BioViewController: UIViewController {
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personAgeLabel: UILabel!
    @IBOutlet weak var personAboutLabel: UILabel!
    @IBOutlet weak var personAvatarView: UIImageView!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        personNameLabel.text = person.name
        personAgeLabel.text = String(person.age)
        personAboutLabel.text = person.about
        personAvatarView.image = UIImage(named: "perejro-avatar")
        personAvatarView.layer.cornerRadius = 20
    }
    
}
