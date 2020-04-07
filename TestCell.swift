//
//  TestCell.swift
//  ToDoAppTV
//
//  Created by Harinath Reddy G on 31/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

protocol ChangeButton {
    func changeButton(checked: Bool, index: Int)
}

class TestCell: UITableViewCell {

    @IBAction func checkBoxAction(_ sender: Any) {
        if tasks[indexP!].checked {
            delegate?.changeButton(checked: false, index: indexP!)
        }else{
            delegate?.changeButton(checked: true, index: indexP!)
        }
    }
    
    
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var taskLabel: UILabel!
    
    
    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?
}
