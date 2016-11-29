//
//  Pay.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 11/21/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import Foundation
import Firebase


class Pay: UIViewController{
    
    func buyButtonTapped() {
        let addCardViewController = STPAddCardViewController()
        addCardViewController.delegate = self
        // STPAddCardViewController must be shown inside a UINavigationController.
        let navigationController = UINavigationController(rootViewController: addCardViewController)
        self.present(navigationController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
