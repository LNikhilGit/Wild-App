//
//  LocationModel.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import Foundation
import MapKit

struct LocationModel: Codable,Identifiable{
    
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
