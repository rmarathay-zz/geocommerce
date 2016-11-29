//
//  ViewController.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 11/21/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import UIKit
import MapKit
import GoogleMaps

class MapView: UIViewController, GMSMapViewDelegate, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager();
    
    @IBOutlet weak var map: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self;
        locationManager.requestWhenInUseAuthorization();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        //map.isMyLocationEnabled = true
        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude: 103.848, zoom: 12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.map = mapView
    }
}

