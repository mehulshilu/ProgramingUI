//
//  ThemeCollectionViewCell.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 09/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import UIKit

class ThemeCollectionViewCell: UICollectionViewCell {
    
    var textLabel =  UILabel()
    var imageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       contentView.backgroundColor = UIColor(red: 248/256, green: 248/256, blue: 237/256, alpha: 1.0)
        contentView.layer.cornerRadius = 5
         
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        contentView.addSubview(imageView)
         
        textLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3))
        textLabel.textAlignment = .center
        contentView.addSubview(textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
