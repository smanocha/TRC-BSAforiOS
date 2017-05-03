//
//  addContactViewController.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 5/2/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit
import os.log

class addContactViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var contact: Contact?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        // Set up views if editing an existing Meal.
        if let contact = contact {
            navigationItem.title = contact.name
            nameTextField.text = contact.name
            emailTextField.text = contact.email
            phoneTextField.text = contact.phone
        }

        
        // Enable the Save button only if the text field has a valid contact name.
        updateSaveButtonState()
        
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Disable the Save button while editing.
        saveButton.isEnabled = false
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        let name = nameTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        // Set the contact to be passed to ContactTableViewController after the unwind segue.
        contact = Contact(name: name, phone: phone, email: email)    }
    
    //MARK: Actions

    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        let isPresentingInAddContactMode = presentingViewController is UINavigationController
        
        if isPresentingInAddContactMode {
            dismiss(animated: true, completion: nil)
        }
        else if let owningNavigationController = navigationController{
            owningNavigationController.popViewController(animated: true)
        }
        else {
            fatalError("The MealViewController is not inside a navigation controller.")
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Private Methods

    private func updateSaveButtonState() {
        // Disable the Save button if the text field is empty.
        let text = nameTextField.text ?? ""
        
        saveButton.isEnabled = !text.isEmpty
    }

}
