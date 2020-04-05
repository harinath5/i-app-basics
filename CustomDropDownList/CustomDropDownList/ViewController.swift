//
//  ViewController.swift
//  CustomDropDownList
//
//  Created by Harinath Reddy G on 05/04/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var btnSelectColor: UIButton!
    @IBOutlet weak var tblColorList: UITableView!
    
    let arrayColor : NSMutableArray = ["Red Color","Yellow Color","Green Color","Blue Color","Purple Color","Orange Color","Brown Color","Gray Color","Black Color","White Color","Pink  Color"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        btnSelectColor.backgroundColor = UIColor.white
//        btnSelectColor.layer.cornerRadius = 5
//        btnSelectColor.layer.borderWidth = 1
        
        
//        tblColorList.backgroundColor = UIColor.white
//        tblColorList.layer.cornerRadius = 5
//        tblColorList.layer.borderWidth = 1
        
        tblColorList.isHidden = true
        
    }


    @IBAction func btnSelectColorClick(_ sender: UIButton) {
        if tblColorList.isHidden == true {
            tblColorList.isHidden = false
        }else{
            tblColorList.isHidden = true
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
            as UITableViewCell?
        
        cell?.textLabel?.text = arrayColor[indexPath.row] as? String
        
        return cell!
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedItem = arrayColor.object(at: indexPath.row) as! NSString
        
        btnSelectColor.setTitle(selectedItem as String, for: UIControl.State.highlighted)
        
        if selectedItem.isEqual(to: "Red") {
            self.view.backgroundColor = UIColor.red
            
        }else if selectedItem.isEqual(to: "Blue") {
            self.view.backgroundColor = UIColor.blue
        
        }else if selectedItem.isEqual(to: "Green") {
            self.view.backgroundColor = UIColor.green
        
        }else if selectedItem.isEqual(to: "Yellow") {
            self.view.backgroundColor = UIColor.yellow
        
        }else if selectedItem.isEqual(to: "Orange") {
            self.view.backgroundColor = UIColor.orange

        }else if selectedItem.isEqual(to: "Brown") {
            self.view.backgroundColor = UIColor.brown

        }else if selectedItem.isEqual(to: "Gray") {
            self.view.backgroundColor = UIColor.gray

        }else if selectedItem.isEqual(to: "Purple") {
            self.view.backgroundColor = UIColor.purple

        }else if selectedItem.isEqual(to: "Pink") {
            self.view.backgroundColor = UIColor.systemPink

        }else if selectedItem.isEqual(to: "Black") {
            self.view.backgroundColor = UIColor.black

        }

        tblColorList?.isHidden = true
        
    }
    
}
