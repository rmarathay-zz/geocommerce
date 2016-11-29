//
//  Map.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 11/25/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class Map: UIViewController, CLLocationManagerDelegate{
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self;
        locationManager.requestWhenInUseAuthorization();
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let last = locations.count - 1
        let currentLocation = locations[last]
        let centerLocation = CLLocationCoordinate2D(latitude: currentLocation.coordinate.latitude, longitude: currentLocation.coordinate.longitude);
        let regionSpan = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005);
        let regionLocation = MKCoordinateRegion(center: centerLocation, span: regionSpan);
        self.map.setRegion(regionLocation, animated: true);
        let mainAnno = MKPointAnnotation();
        mainAnno.coordinate = centerLocation;
        self.map.addAnnotation(mainAnno);
    }
}
