//
//  NameViewController.swift
//  PassData
//
//  Created by Harinath Reddy G on 31/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var congratsLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var finalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = finalName

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
