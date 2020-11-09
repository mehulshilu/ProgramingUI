//
//  TrendingTableViewCell.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 09/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {
    
    var companyNameLabel = UILabel()
    var companyCodeLabel = UILabel()
    var iconImageView = UIImageView()
    var tredlabel = UILabel()
    var boxView = UIView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let boxView = UIView.init(frame: CGRect(x : UIScreen.main.bounds.size.width - 100 , y : 25 , width :80, height : 25))
        
        boxView.backgroundColor = UIColor.green

        boxView.layer.cornerRadius = boxView.frame.height/2
        self.contentView.addSubview(boxView)
        
        tredlabel = UILabel(frame: CGRect(x:5, y:3 , width: boxView.frame.size.width - 10, height: 20))
        tredlabel.text = "24.5%"
        tredlabel.textAlignment = .center
        tredlabel.font = tredlabel.font.withSize(15)
        boxView.addSubview(tredlabel)

        
        let lineview = UIView.init(frame: CGRect(x : 5 , y : 74 , width :UIScreen.main.bounds.size.width - 10, height : 1))
        lineview.backgroundColor = UIColor.lightGray
        self.contentView.addSubview(lineview)
        
        
        
        companyNameLabel = UILabel(frame:CGRect(x:95, y:10 , width: UIScreen.main.bounds.size.width - 100 , height: 30) )
        companyNameLabel.textColor = UIColor.black
        companyNameLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        contentView.addSubview(companyNameLabel)
        
        companyCodeLabel = UILabel(frame: CGRect(x:95, y:40 , width: 60 , height: 30))
        companyCodeLabel.textColor = UIColor.gray
        companyCodeLabel.font = companyCodeLabel.font.withSize(18)
        contentView.addSubview(companyCodeLabel)
        
        
        iconImageView = UIImageView(frame: CGRect(x:35, y:10 , width: 50 , height: 50))
        iconImageView.layer.cornerRadius = iconImageView.frame.height/2
        iconImageView.layer.masksToBounds = true
        iconImageView.clipsToBounds = true
        
        contentView.addSubview(iconImageView)
        
        
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
