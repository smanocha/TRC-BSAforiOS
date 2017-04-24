//
//  CalendarView.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 4/23/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit
import WebKit

class CalendarView: UIViewController, WKUIDelegate{

    var webView: WKWebView!
    var myURL = URL(string:"http://www.apple.com")
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(buttonClicked + " if this is blank the button click did not go through");
        switch buttonClicked{
        case "cbt": myURL = URL(string: "http://www.trcbsa.org/Calendar")
        case "jsb": myURL = URL(string: "https://beascout.scouting.org/")
        default: myURL = URL(string:"http://www.apple.com")
        }
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
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
