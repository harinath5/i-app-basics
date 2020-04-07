//
//  ViewController.swift
//  PassData
//
//  Created by Harinath Reddy G on 31/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func done(_ sender: Any) {
        nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NameViewController
        vc.finalName = self.nameText
    }
    
}

