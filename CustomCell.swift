//
//  CustomCell.swift
//  UITableViewCell
//
//  Created by Harinath Reddy G on 30/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var message : String?
    var mainimage : UIImage?
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    var mainImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(mainImageView)
        self.addSubview(messageView)
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 100.00).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 100.00).isActive = true
        
        
        messageView.leftAnchor.constraint(equalTo: self.messageView.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = message {
            messageView.text = message
        }
        if let image = mainimage {
            mainImageView.image = image
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
