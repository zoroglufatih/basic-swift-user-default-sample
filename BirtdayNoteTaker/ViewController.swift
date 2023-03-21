//
//  ViewController.swift
//  BirtdayNoteTaker
//
//  Created by Fatih Zoroğlu on 19.03.2023.
//

import UIKit




class ViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birtdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedBirtday = UserDefaults.standard.object(forKey: "birtday")
        
        if let myName = storedName as? String {
            nameLabel.text = "Name: \(myName)"
        }
        if let myBirtday = storedBirtday as? String{
            birtdayLabel.text = "Birtday: \(myBirtday)"
        }
        
    }

    @IBAction func btnSave(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birtdayTextField.text!, forKey: "birtday")
         
        nameLabel.text = "Name: \(nameTextField.text!)"
        
        birtdayLabel.text = "Birtday: \(birtdayTextField.text!)"
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedBirtday = UserDefaults.standard.object(forKey: "birtday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirtday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birtday")
            birtdayLabel.text = "Birtday: "
        }
        
        
    }
    
}

