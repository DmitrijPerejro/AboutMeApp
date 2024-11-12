//
//  MotorcycleViewController.swift
//  AboutMeApp
//
//  Created by Perejro on 12/11/2024.
//

import UIKit

final class MotorcycleViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var motorcycle: Bike!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = motorcycle.title
        modelLabel.text = motorcycle.model
        descriptionLabel.text = motorcycle.shortDescription
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? MotorcycleDetailsViewController {
            vc.motorcycleDescription = motorcycle.description
        }
    }
}
