//
//  Restaurant Two.swift
//  HackwichEleven
//
//  Created by Dominique Cortez-Montiho on 11/14/22.
//

import UIKit
import MapKit

class Restaurant_Two: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    

    let restaurantTwoTitle: String
    let restaurantTwoType: String
    let coordinateTwo: CLLocationCoordinate2D
    
    init(restaurantTwoTitle:String, restaurantTwoType:String, coordinateTwo:CLLocationCoordinate2D)
    {
        self.restaurantTwoTitle = restaurantTwoTitle
        self.restaurantTwoType = restaurantTwoType
        self.coordinateTwo = coordinateTwo
        self.coordinate = coordinateTwo
        super.init()

    }
     
    var subtitle: String? {
        return restaurantTwoTitle
        
    }

    
}
