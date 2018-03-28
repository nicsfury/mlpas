//
//  ArticleListOffice.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 08/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit

class ArticleListOffice: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout   {
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        statusBar.isHidden = true
        collectionView.dataSource = (self as UICollectionViewDataSource)
        collectionView.delegate = (self  as UICollectionViewDelegate)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // 1
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 2
        
        return 100
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppConstants.CellName, for: indexPath) as! MyCollectionViewOffice
        cell.articleNameLbl.text = "Hello nishant"
        cell.countBtn.layer.cornerRadius = cell.countBtn.frame.width/2
        return cell
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 147, height: 123)
    }
    @IBAction func viewArticleDetails(_ sender: Any) {
        let articledetails = ArticleListOffice.instantiate(fromAppStoryboard: .OfficeStoryboardMain)
        self.navigationController?.pushViewController(articledetails, animated: true)
    }
}

