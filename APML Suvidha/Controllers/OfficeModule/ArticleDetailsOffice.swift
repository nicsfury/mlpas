//
//  ArticleDetailsOffice.swift
//  APML Suvidha
//
//  Created by Nishant Gupta on 08/03/18.
//  Copyright © 2018 Interactive Bees. All rights reserved.
//

import Foundation
import UIKit

class ArticleDetailsOffice: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate{
    var searchActive : Bool = false
    @IBOutlet weak var searcBar: UISearchBar!
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var searchBarControler: UISearchBar!
    var models = [LocationModel]()
    var filtered = [LocationModel]()
    
    override func viewDidLoad() {
        tableview.delegate = self
        tableview.dataSource = self
        searcBar.delegate = self
        getCityLocation(name: "origin")
        
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtered = models.filter{ $0.name.lowercased().contains(searcBar.text!.lowercased()) }
        
        if(filtered.count == 0){
            if searchText == ""{
                searchActive = false
            }else{
                searchActive = true
            }
            
        } else {
            searchActive = true
        }
        self.tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchActive {
            return filtered.count
        }
        else{
            return models.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AppConstants.CellName, for: indexPath) as! ArticleDetailsTableViewCellOffice
        let model: LocationModel
        // if searchControler.
        if searchActive {
            model = filtered[indexPath.row]
        }else{
            model = models[indexPath.row]
        }
        
        cell.articleNameLbl.text =  model.name
        
        return cell
    }
    //    func updateSearchResults(for searchController: UISearchController) {
    //        // If we haven't typed anything into the search bar then do not filter the results
    //        if searchController.searchBar.text! == "" {
    //            filtered = models
    //        } else {
    //            // Filter the results
    //            filtered = models.filter { $0.name.lowercased().contains(searchController.searchBar.text!.lowercased()) }
    //        }
    //
    //        self.tableview.reloadData()
    //    }
    func getCityLocation(name: String){
        
        WebServices.shared.getCityLocation(methodName: name, completion: {(response,error) in
            if error == nil{
                let status = response!["status"] as! Int
                switch(status){
                case 200:
                    let listarray:[[String: Any]] = response!["city"] as! [[String : Any]]
                    for item in listarray{
                        self.models.append(LocationModel(name:(item["name"] as! String)))
                    }
                    self.tableview.reloadData()
                    break
                    
                default:
                    break
                }
            }
        })
    }
    
}
