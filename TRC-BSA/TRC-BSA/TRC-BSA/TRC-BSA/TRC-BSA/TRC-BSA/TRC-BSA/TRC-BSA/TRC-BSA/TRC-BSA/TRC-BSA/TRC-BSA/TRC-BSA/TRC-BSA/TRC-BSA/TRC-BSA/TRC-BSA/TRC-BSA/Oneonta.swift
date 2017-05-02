//
//  Oneonta.swift
//  TRC-BSA
//
//  Created by linda on 4/29/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import Foundation
import MapKit

class Oneonta{
    var UpperLeft: CLLocationCoordinate2D
    var UpperRight: CLLocationCoordinate2D
    var LowerLeft: CLLocationCoordinate2D
    var LowerRight: CLLocationCoordinate2D
    
    var overlayBoundingMapRect: MKMapRect
    
    init(filename: String) {
        let filePath = NSBundle.mainBundle().pathForResource(filename, ofType: "plist")
        let properties = NSDictionary(contentsOfFile: filePath!)
        
        let upperLeftPoint = CGPointFromString(properties!["UpperLeft"] as! String)
        upperLeftCoordinate = CLLocationCoordinate2DMake(CLLocationDegrees(upperLeftPoint.x),CLLocationDegrees(upperLeftPoint.y))
         
        let upperRightPoint = CGPointFromString(properties!["UpperRight"] as! String)
        upperRightCoordinate = CLLocationCoordinate2DMake(CLLocationDegrees(upperRightPoint.x),
                                                               CLLocationDegrees(upperRightPoint.y))
        
        let overlayBottomLeftPoint = CGPointFromString(properties!["overlayBottomLeftCoord"] as! String)
        overlayBottomLeftCoordinate = CLLocationCoordinate2DMake(CLLocationDegrees(overlayBottomLeftPoint.x),
                                                                 CLLocationDegrees(overlayBottomLeftPoint.y))
        
//        let boundaryPoints = properties!["boundary"] as! NSArray
//        
//        boundaryPointsCount = boundaryPoints.count
//        
//        boundary = []
//        
//        for i in 0...boundaryPointsCount-1 {
//            let p = CGPointFromString(boundaryPoints[i] as! String)
//            boundary += [CLLocationCoordinate2DMake(CLLocationDegrees(p.x), CLLocationDegrees(p.y))]
//        }
    }
}
