//
//  Contact.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 5/1/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import Foundation
import os.log


class Contact : NSObject, NSCoding
{
    var name : String?
    var phone: String?
    var email : String?
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("contacts")
    
    //MARK: Types
    
    struct PropertyKey {
        static let name = "name"
        static let phone = "phone"
        static let email = "email"
    }
    
    
    init?( name : String, phone : String, email: String)
    {
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // insert code for testing email validity

        
        // insert code for testing phone number validity
        
        // Initialize stored properties.
        self.name = name
        self.phone = phone
        self.email = email
    }
    
//    
//    required init(coder adecoder : NSCoder) {
//        self.name = adecoder.decodeObject(forKey: "name") as? String ?? ""
//        self.phone = adecoder.decodeObject(forKey: "phone") as? String ?? ""
//        self.email = adecoder.decodeObject(forKey: "email") as? String ?? ""
//    }
//    
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(name, forKey: "name")
//        aCoder.encode(phone, forKey: "phone")
//        aCoder.encode(email, forKey: "email")
//    }
//    
//    class func loadContacts() -> [Contact]
//    {
//        guard let data = UserDefaults.standard.data(forKey: "Contacts"), let loadedContacts = NSKeyedUnarchiver.unarchiveObject(with: data as Data) as? [Contact]
//        else
//        {
//            return []
//        }
//        return loadedContacts
//    }
//    
//    class func saveContacts()
//    {
//        let userDefaults = UserDefaults.standard
//        
//        let encoded = NSKeyedArchiver.archivedData(withRootObject: contacts)
//        userDefaults.set(encoded, forKey: "Contacts")
//        userDefaults.synchronize()
    //}
    
    //MARK: NSCoding
     required init(coder adecoder : NSCoder) {
            self.name = adecoder.decodeObject(forKey: "name") as? String ?? ""
            self.phone = adecoder.decodeObject(forKey: "phone") as? String ?? ""
            self.email = adecoder.decodeObject(forKey: "email") as? String ?? ""
        }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(phone, forKey: PropertyKey.phone)
        aCoder.encode(email, forKey: PropertyKey.email)
    }
    

    
}
