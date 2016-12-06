//
//  MainData.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 12/5/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import Foundation
import Firebase
import CoreLocation

class MainData: NSObject{
    static var dataRef = FIRDatabase.database().reference()
    static var userRef = dataRef.child(userId)
    
    
    static var username = "";
    static var userId = "";
    
}
