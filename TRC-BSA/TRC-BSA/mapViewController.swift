//
//  mapViewController.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 4/26/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController {

    
    @IBOutlet weak var Oneonta: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Oneonta.image = UIImage(named:"osrCampMap")
        
        //make the image fit
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

