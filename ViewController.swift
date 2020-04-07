//
//  ViewController.swift
//  UITableViewCell
//
//  Created by Harinath Reddy G on 30/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

struct CellData {
    let image : UIImage?
    let message : String?
}

class TableViewController: UITableViewController {

    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        data = [CellData.init(image: #imageLiteral(resourceName: "Banff"), message: "Banff"),CellData.init(image: #imageLiteral(resourceName: "FitzRoy"), message: ""),CellData.init(image: #imageLiteral(resourceName: "Huang"), message: "Huang"),CellData.init(image: #imageLiteral(resourceName: "k2"), message: "k2"),CellData.init(image: #imageLiteral(resourceName: "Kailash"), message: "Kailash")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "customs") as! CustomCell
        cell.mainimage = data [indexPath.row].image
        cell.message = data[indexPath.row].message
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


}

