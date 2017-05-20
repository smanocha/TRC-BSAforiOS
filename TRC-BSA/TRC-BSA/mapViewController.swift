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
    
    let orchardLakePDF = "2017-OSR-Program-Guide-Aquatics-Page"
    let craftLodgePDF = "2017-OSR-Program-Guide-Craft-Lodge-Page"
    let councilHousePDF = "2017-OSR-Program-Guide-Communications-Page"
    
    let bobCatShelterPDF = "2017 OSR Program Guide -  Nature Page"
    let longHousePDF = "2017 OSR Program Guide - ATV Page"
    let westShelterPDF = "2017 OSR Program Guide - Field Sports Page"
    let councilHouseHealthSafetyPDF = "2017 OSR Program Guide - Health & Saftey Page"
    let maintainenceBuildingPDF = "2017 OSR Program Guide - Older Boy Page"
    let rappahannockPDF = "2017 OSR Program Guide - Paintball Page"
    let tradingPostLongHousePDF = "2017 OSR Program Guide - Sales & Finance Page"
    let otterShelterPDF = "2017 OSR Program Guide - Scout Craft Page"
    let danBeardShelterRangesPDF = "2017 OSR Program Guide - Shooting Sports Page"
    let councilHouseSTEMPDF = "2017 OSR Program Guide - STEM Page"
    let trSheltherPDF = "2017 OSR Program Guide - The Glaize Page"
    
    @IBOutlet weak var Onteora: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Onteora.image = UIImage(named:"osrCampMap")
        
        
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
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    @IBAction func openCouncilHousePDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: councilHousePDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    
    @IBAction func openBobcatShelterPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: bobCatShelterPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    
    @IBAction func openLongHousePDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: longHousePDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    
    
    @IBAction func openWestShelterPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: westShelterPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    
    @IBAction func openCouncilHouseHealthSafetyPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: councilHouseHealthSafetyPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    
    @IBAction func openMaintainenceBuildingPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: maintainenceBuildingPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    @IBAction func openOtterShelterPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: otterShelterPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    
    
    @IBAction func openDanBeardShelterRangesPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: danBeardShelterRangesPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    
    @IBAction func openCouncilHouseSTEMPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: councilHouseHealthSafetyPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    @IBAction func openTRSheltherPDF(_ sender: Any) {
        if let url = Bundle.main.url(forResource: trSheltherPDF, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url:url)
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }

    }
    
    
}

