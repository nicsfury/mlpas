//
//  ViewArticleListComplete.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 27/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit
class ViewArticleListComplete: UIViewController{
    
}

extension ViewArticleListComplete: UITableViewDelegate{
    
}

extension ViewArticleListComplete: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ViewArticleListCompleteTableViewCell
        
        return cell
    }
    
    
}
