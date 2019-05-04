//
//  SearchViewController.swift
//  GBCARE
//
//  Created by Arindam Banerjee on 04/05/19.
//  Copyright © 2019 MD ISHTIYAK. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var navigationBar: UINavigationBar!
    
    var arrRecent = ["mango","medical","doctor","patient","cards","Px p50"]
    var arrTrending = ["nurse","cloroform","p500","alopathic","homiopathy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarActivate()
        // Do any additional setup after loading the view.
    }
    
    func searchBarActivate(){
        navigationBar.isTranslucent = false
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Search Products"
        searchBar.showsCancelButton = true
        searchBar.becomeFirstResponder()
        self.navigationBar.topItem?.titleView = searchBar
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        navigationController?.popViewController(animated: true)
    }
    
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        Apirequest.getSerachProductResult(searchText: searchBar.text!) { (mySearchData) in
//            if mySearchData.json_data?.count == 0 || mySearchData.json_data?.count == nil {
//                KRProgressHUD.dismiss({
//                    KRProgressHUD.showError(withMessage: "No Products Found")
//                })
//            }else{
//                KRProgressHUD.dismiss({
//                    let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
//                    let searchVC = storyboardMain.instantiateViewController(withIdentifier: ReuseIdentifiers.searchResultVCIdentifier) as! SearchResultVC
//                    DispatchQueue.main.async {
//                        searchVC.navigationBar.topItem?.title = "Result For  " + searchBar.text!
//                        searchVC.headerText = "Result In All Category"
//                        searchVC.collectionViewForCategory.isHidden = false
//                        searchVC.tableViewSearchDetails.reloadData()
//                        searchVC.getSearchData = mySearchData
//                    }
//                    self.navigationController?.present(searchVC, animated: true, completion: nil)
//                })
//            }
//        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Recent"
        }else{
            return "Trending"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return arrRecent.count
        }else{
            return arrTrending.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSearch = tableView.dequeueReusableCell(withIdentifier: "cellSearch", for: indexPath) as! SearchTableViewCell
        if indexPath.section == 0{
            cellSearch.lblRecentOrTrending.text = arrRecent[indexPath.row]
        }else{
            cellSearch.lblRecentOrTrending.text = arrTrending[indexPath.row]
        }
        return cellSearch
    }
}

