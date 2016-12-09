//
//  gc.swift
//  geoComApp
//
//  Created by Ranjit Marathay on 12/7/16.
//  Copyright © 2016 Ranjit Marathay. All rights reserved.
//

import Foundation

class geocommerce{
    
    var time = NSDate()
    var amount = NSNumber()
    var longitude = NSNumber()
    var latitude = NSNumber()
    
    
    public init(time: NSDate, amount: NSNumber, longitude: NSNumber, latitude: NSNumber){
        self.time = time
        self.amount = amount
        self.longitude = longitude
        self.latitude = latitude
    }
    
    public func getStorable() -> [String : String]{
        let storable = ["time" : String(describing: self.time), "amount" : String(describing: self.amount), "longitude" : String(describing: self.longitude), "latitude" : String(describing: self.latitude)]
        return storable
    }
    
}
