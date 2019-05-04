//
//  SideMenuViewController.swift
//  GBCARE
//
//  Created by Arindam Banerjee on 04/05/19.
//  Copyright © 2019 MD ISHTIYAK. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    let arrMenuData = ["Notification","Activity","Payment","Report"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenuData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellMenu = tableView.dequeueReusableCell(withIdentifier: "cellMenu", for: indexPath) as! SideMenuTableCell
        cellMenu.lblMenuTitle.text = arrMenuData[indexPath.row]
        return cellMenu
    }
}
