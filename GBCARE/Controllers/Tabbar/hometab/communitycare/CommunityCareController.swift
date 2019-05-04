//
//  CommunityCareController.swift
//  GBCARE
//
//  Created by Amit kumar thakur on 20/04/19.
//  Copyright © 2019 MD ISHTIYAK. All rights reserved.
//

import UIKit

class CommunityCareController: UIViewController {

    @IBOutlet weak var btnSearch: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.addGestureRecognizer(self.revealViewController()!.panGestureRecognizer())
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSearch(_ sender: Any) {
        let searchVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.navigationController?.pushViewController(searchVC, animated: true)
    }
    
}
