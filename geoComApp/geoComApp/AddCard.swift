//
//  AddCard.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 12/7/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import UIKit
import Stripe

class AddCard: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var cardNum: UITextField!
    @IBOutlet weak var exp: UITextField!
    @IBOutlet weak var cvc: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    @IBAction func saveButton(_ sender: Any) {
        MainData.userEmail = email.text!
        MainData.cardNumber = cardNum.text!
        let expirationDate = self.exp.text?.components(separatedBy: "/")
        MainData.expYear = Int(expirationDate![1])!
        MainData.expMonth = Int(expirationDate![0])!
        MainData.cvcNumber = self.cvc.text!;
        let MainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil);
        let MapViewController: UIViewController = MainStoryBoard.instantiateViewController(withIdentifier: "Map");
        self.present(MapViewController, animated: true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.email.text = MainData.userEmail
        self.cardNum.text = MainData.cardNumber
        var temp = String()
        temp += String(MainData.expMonth)
        temp += "/"
        temp += String(MainData.expYear)
        self.exp.text = temp
        self.cvc.text = MainData.cvcNumber
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
