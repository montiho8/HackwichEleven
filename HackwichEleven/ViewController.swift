//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Dominique Cortez-Montiho on 11/14/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        mapView.addAnnotation(restaurantOne)
        
        // Problem Set #1:
        
        let restaurantTwo = Restaurant_Two(restaurantTwoTitle: "Sushi Bay", restaurantTwoType: "Japanese", coordinateTwo: CLLocationCoordinate2D(latitude: 21.339948, longitude: -158.078304))
        
        mapView.addAnnotation(restaurantTwo)
        
    }
    
    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center:location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
        
        
        
    }


    
    
    
    
}

