//
//  ViewController.swift
//  HostIT
//
//  Created by Adam Plotzker on 9/13/17.
//  Copyright © 2017 Adam Plotzker. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
   
    @IBOutlet weak var adressString: UISearchBar!
    
    
    let lat = 40.953167
    let long = -74.203336
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.05, 0.05)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat,long)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "My Home"
        annotation.subtitle = "Come Visit Me"
        mapView.addAnnotation(annotation)
    }
}
