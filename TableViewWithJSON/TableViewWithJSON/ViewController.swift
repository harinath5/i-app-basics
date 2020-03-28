//
//  ViewController.swift
//  TableViewWithJSON
//
//  Created by Naresh Nallamsetty on 19/02/20.
//  Copyright © 2020 Axiom. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
   
    @IBOutlet weak var tableView: UITableView!
    var heroes = [HeroStats]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        downloadJSONData {
            print("successfull")
            self.tableView.reloadData()
        }
        
        }
    
    func downloadJSONData(completed: @escaping () -> ()){
        let url = URL(string: "https://api.opendota.com/api/heroStats")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil{
                do{
                    self.heroes = try JSONDecoder().decode([HeroStats].self, from: data!)
                    DispatchQueue.main.async {
                        completed() 
                    }
                }catch{
                    print("error is \(error.localizedDescription)")
                }
            }
        }.resume()
    }
   
}
extension ViewController: UITableViewDelegate{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController{
            destination.hero = heroes[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = heroes[indexPath.row].localized_name.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "showDetails", sender: self)
    }
   
}

