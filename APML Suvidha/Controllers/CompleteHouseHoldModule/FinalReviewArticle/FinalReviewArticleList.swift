//
//  FinalReviewArticleList.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 30/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit

class FinalReviewArticleList: UIViewController{
    
}

extension FinalReviewArticleList: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: "final")!
        
        return cell
    }
    
    
}


extension FinalReviewArticleList: UITableViewDelegate{
    
}
