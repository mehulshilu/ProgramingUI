//
//  CategoryTableViewCell.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 09/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell
{

    var nameLabel = UILabel()
    var iconImageView =  UIImageView()
    var boxView = UIView()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        
        boxView = UIView.init(frame: CGRect(x : 35 , y : 24 , width :UIScreen.main.bounds.size.width - 24*2, height : 80))
        self.contentView.backgroundColor = UIColor.clear
        boxView.backgroundColor = UIColor.green
        self.contentView.addSubview(boxView)
        boxView.layer.cornerRadius = 40
        
        let lineview = UIView.init(frame: CGRect(x : 5 , y : 110 , width :UIScreen.main.bounds.size.width - 10, height : 1))
        lineview.backgroundColor = UIColor.gray
        self.contentView.addSubview(lineview)
        
        
        
        nameLabel = UILabel(frame:CGRect(x:130, y:20 , width: boxView.frame.size.width , height: 40) )
        boxView.addSubview(nameLabel)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        nameLabel.textColor = UIColor.white
        
        iconImageView = UIImageView(frame: CGRect(x:50, y:15 , width: 50 , height: 50))
        iconImageView.layer.cornerRadius = iconImageView.frame.height/2
        iconImageView.layer.masksToBounds = true
        iconImageView.clipsToBounds = true
        boxView.addSubview(iconImageView)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    

}
