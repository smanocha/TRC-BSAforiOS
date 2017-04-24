//
//  ViewController.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 4/23/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit
import WebKit

var buttonClicked = ""

class ViewController: UIViewController {

    

    @IBAction func calendarButton(_ sender: Any) {
        buttonClicked = "cbt"
        print("buttonClicked")
    }
    
    @IBAction func joinScoutsButton(_ sender: Any) {
        buttonClicked = "jsb"
    }
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    @IBAction func openMenu(_ sender: Any) {
        if(menuShowing){
            leadingConstraint.constant = -140
        }
        else{
            leadingConstraint.constant = 0;
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        menuShowing = !menuShowing
    }

   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

