//
//  ViewController+CollectionView.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 09/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return themeList.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! ThemeCollectionViewCell
        

        myCell.textLabel.text  = "\(themeList[indexPath.row])"
        myCell.imageView.image = UIImage(named: "\(themeIcon[indexPath.row])")
        return myCell
    }
    
}
