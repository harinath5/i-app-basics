//
//  AddTaskController.swift
//  ToDoAppTV
//
//  Created by Harinath Reddy G on 31/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddTaskController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var addTask: UITextField!
    
    
    @IBAction func addFunction(_ sender: Any) {
        if addTask.text != ""{
            delegate?.addTask(name: addTask.text!)
            navigationController?.popViewController(animated: true)
        }
    }

    var delegate: AddTask?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
