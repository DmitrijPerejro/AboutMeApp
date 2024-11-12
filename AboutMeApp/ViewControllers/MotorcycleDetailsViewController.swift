//
//  MotorcycleDetailsViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 12/11/2024.
//

import UIKit

final class MotorcycleDetailsViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var motorcycleDescription: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = motorcycleDescription
    }
}
