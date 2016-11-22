//
//  ViewController.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 11/21/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import UIKit
import MapKit

class MapView: UIViewController {
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var MapUIView: MapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

