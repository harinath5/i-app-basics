//
//  ViewController.swift
//  ToDoAppTV
//
//  Created by Harinath Reddy G on 30/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask  {
    
    @IBOutlet weak var tableView: UITableView!
 
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        tasks.append(Task(name: "Test Object"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TestCell
        
        cell.taskLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].checked{
            cell.checkBox.setBackgroundImage(#imageLiteral(resourceName: "Half"), for: UIControl.State.normal)
        }else{
        cell.checkBox.setBackgroundImage(#imageLiteral(resourceName: "tick"), for: UIControl.State.normal)
        }
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskController
        vc.delegate = self
        navigationController?.popViewController(animated: true)
    }
    
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    
    class Task {
        var name = ""
        var checked = false
        
        convenience init(name: String){
            self.init()
            self.name = name
        }
    }
}

