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

    //the file names need to be changed bc it includes the year
    //and the file is not static
    let orchardLakePDF = "2017 OSR Program Guide - Aquatics Page"
    let craftLodgePDF = "2017 OSR Program Guide - Craft Lodge Page"
    let councilHousePDF = "2017 OSR Program Guide - Communications Page"
    
    
    @IBOutlet weak var Oneonta: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Oneonta.image = UIImage(named:"osrCampMap")
        
        
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
    
    
    @IBAction func openOrchardLakePDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: orchardLakePDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    @IBAction func openCraftLodgePDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: craftLodgePDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    

    @IBAction func openCouncilHousePDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: councilHousePDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }

}

