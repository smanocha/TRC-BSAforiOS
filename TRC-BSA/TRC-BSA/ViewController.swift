//
//  ViewController.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 4/25/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit
var buttonClicked = ""

class ViewController: UIViewController {

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    
    
    @IBAction func joinScoutsButton(_ sender: Any) {
        buttonClicked = "jsb"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func calendarButton(_ sender: Any) {
        buttonClicked = "cbt"

    }


    @IBAction func myScoutingButton(_ sender: Any) {
        buttonClicked = "msbt"

    }
    @IBAction func openMenu(_ sender: Any) {
        if(menuShowing){
            leadingConstraint.constant = -140
        }
        else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
            
        }
        menuShowing = !menuShowing
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

