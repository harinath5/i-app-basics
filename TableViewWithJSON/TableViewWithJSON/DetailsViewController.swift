//
//  DetailsViewController.swift
//  TableViewWithJSON
//
//  Created by Naresh Nallamsetty on 23/02/20.
//  Copyright © 2020 Axiom. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var AttributeLabel: UILabel!
    @IBOutlet weak var Attacklabel: UILabel!
    @IBOutlet weak var Legslabel: UILabel!

    var hero:HeroStats?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let urlstring = "https://api.opendota.com"+(hero?.img)!
        let url = URL(string: urlstring)
         imageview.downloaded(from: url!)
        nameLabel.text = hero?.localized_name
        AttributeLabel.text = hero?.primary_attr
        Attacklabel.text = hero?.attack_type
        Legslabel.text = "\((hero?.legs)!)"
      
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
