//
//  ViewController+TableView.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 09/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UITableViewDataSource,UITableViewDelegate
{
    
     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         if TrandingFlag
         {
               return 35
         }
         else
         {
              return 0
         }

     }
    

     
     func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
     {
         if TrandingFlag
         {
             let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 35))
             
             let label = UILabel(frame: CGRect(x: 25, y: 10, width: tableView.frame.size.width, height: 25))
            
             label.font = UIFont.boldSystemFont(ofSize: 20.0)
            
             
             headerView.addSubview(label)
            
            if section == 1
            {
                label.text = "Top Gainer"
            }
            else
            {
                label.text = "Top Seller"
            }
             

              headerView.backgroundColor = UIColor.white

              return headerView
         }
         else
         {
             return nil
         }
     }
     
     func numberOfSections(in tableView: UITableView) -> Int {
         if TrandingFlag
         {
             return 2
         }
         else
         {
             return 1
         }
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if TrandingFlag
        {
            if section == 1
            {
                return tredingTopGainerList.count
            }
            else
            {
                return tredingTopSellerList.count
            }
        }
        else
        {
            return CategoryLabelList.count
        }
         
     }
     
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         if TrandingFlag
         {
             let cell = tableView.dequeueReusableCell(withIdentifier: "trendingCell", for: indexPath) as! TrendingTableViewCell
             
             cell.backgroundColor = UIColor.clear
            
            if indexPath.section == 1
            {
                cell.companyNameLabel.text  =  "\(tredingTopGainerList[indexPath.row])"
                cell.iconImageView.image = UIImage(named: "\(tredingTopGainerIcon[indexPath.row])")
                cell.tredlabel.text = "+" + "\(tredingTopGainervalue[indexPath.row])" + "%"

                
            }
            else
            {
                cell.companyNameLabel.text  =  "\(tredingTopSellerList[indexPath.row])"
                cell.iconImageView.image = UIImage(named: "\(tredingTopSellerIcon[indexPath.row])")
                cell.tredlabel.text = "+" + "\(tredingTopSellervalue[indexPath.row])" + "%"
                
            }

             
             return cell
         }
         else
         {
             let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryTableViewCell
             
             cell.backgroundColor = UIColor.clear
             cell.nameLabel.text  =  "\(CategoryLabelList[indexPath.row])"
             cell.boxView.backgroundColor = CategoryColor[indexPath.row]
             cell.iconImageView.image = UIImage(named: "\(CategoryIcon[indexPath.row])")
             
             return cell
         }
       

     }
     
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
     {
         if TrandingFlag
         {
             return 75
         }
         else
         {
             return 100
         }

     }
}
