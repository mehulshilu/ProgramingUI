//
//  ViewController.swift
//  demo-programUI
//
//  Created by Mehul Shilu on 08/11/20.
//  Copyright © 2020 Mehul Shilu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var categoryTableView = UITableView()
    var themeCollectionView : UICollectionView!
    let myarray = ["abc","pqr","xyz"]
    var CategoryFlag = Bool()
    var TrandingFlag = Bool()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupnavigationbar()
        customeSegment()
        setupThemeCollectionView()
        setupCatagoryTableView()
        
    }
    
    
    func setupnavigationbar()
    {
        let screenSize: CGRect = UIScreen.main.bounds
        
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 80, width: screenSize.width, height: 50))
        
        navBar.barTintColor = .white
        
        let navItem = UINavigationItem(title: "Explorer")
        
        let rightButton = UIBarButtonItem(image: UIImage(named: "user.png"), style: .plain, target: self, action: #selector(done))
        let leftButton = UIBarButtonItem(image: UIImage(named: "user.png"), style: .plain, target: self, action: #selector(done))
        
        navItem.rightBarButtonItem  = rightButton
        navItem.leftBarButtonItem = leftButton

        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }
    
    
    func customeSegment()
    {
        let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 140, width: self.view.frame.width, height: 50), buttonTitle:["Category","Themes","Tranding"])
          
        codeSegmented.backgroundColor = .clear
          
        codeSegmented.delegate = self
          
        view.addSubview(codeSegmented)
    }
    
    func setupCatagoryTableView()
    {
        categoryTableView = UITableView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: self.view.frame.height - 60))
        
        categoryTableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: "categoryCell")
        
        categoryTableView.register(TrendingTableViewCell.self, forCellReuseIdentifier: "trendingCell")
        
        
        categoryTableView.dataSource = self
        categoryTableView.delegate = self
        
        
        self.view.addSubview(categoryTableView)
        categoryTableView.backgroundColor = UIColor.clear
        categoryTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
 
    
    func setupThemeCollectionView()
    {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        layout.itemSize = CGSize(width: 170, height: 190)
        
        themeCollectionView = UICollectionView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: self.view.frame.height - 60), collectionViewLayout: layout)
        
        themeCollectionView.dataSource = self
        themeCollectionView.delegate = self
        
        
        themeCollectionView.register(ThemeCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        themeCollectionView.backgroundColor = UIColor.white
        self.view.addSubview(themeCollectionView)
        
        themeCollectionView.isHidden = true

    }
    

    @objc func done()
    {
        print("Done Button Event")
    }
    
}
extension ViewController : CustomSegmentedControlDelegate
{
    
    func change(to index: Int)
    {
        if index == 0
        {
            TrandingFlag = false
            CategoryFlag = true
            themeCollectionView.isHidden = true
            categoryTableView.isHidden = false
            categoryTableView.reloadData()

        }
        else if index == 1
        {
            TrandingFlag = false
            CategoryFlag = false
            categoryTableView.isHidden = true
            themeCollectionView.isHidden = false
        }
        else
        {
            TrandingFlag = true
            CategoryFlag = false
            themeCollectionView.isHidden = true
            categoryTableView.isHidden = false
            categoryTableView.reloadData()
            
        }
        
    }

    
}
