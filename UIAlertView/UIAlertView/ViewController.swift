//
//  ViewController.swift
//  UIAlertView
//
//  Created by phamnhatphong on 15/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showAlert() {
        // Create a basic alert
        let alert = UIAlertController(title: "Alert", message: "This is an alert message.", preferredStyle: .alert)
        
        // Add an action (button) to the alert
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            print("OK button tapped")
        }))
        
        // Present the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func showConfirmationAlert() {
        // Create a confirmation alert with two buttons
        let alert = UIAlertController(title: "Confirmation", message: "Are you sure you want to proceed?", preferredStyle: .alert)
        
        // Add "Cancel" button
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Cancel button tapped")
        }))
        
        // Add "Yes" button
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Yes button tapped")
        }))
        
        // Present the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func showActionSheet() {
        // Create an action sheet
        let actionSheet = UIAlertController(title: "Options", message: "Choose an option", preferredStyle: .actionSheet)
        
        // Add an option
        actionSheet.addAction(UIAlertAction(title: "Option 1", style: .default, handler: { action in
            print("Option 1 selected")
        }))
        
        // Add another option
        actionSheet.addAction(UIAlertAction(title: "Option 2", style: .default, handler: { action in
            print("Option 2 selected")
        }))
        
        // Add a cancel button
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Cancel button tapped")
        }))
        
        // Present the action sheet
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func showTextInputAlert() {
        // Create an alert with a text input field
        let alert = UIAlertController(title: "Input", message: "Enter your name", preferredStyle: .alert)
        
        // Add a text field to the alert
        alert.addTextField { textField in
            textField.placeholder = "Name"
        }
        
        // Add "Submit" button
        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { action in
            if let name = alert.textFields?.first?.text {
                print("Name entered: \(name)")
            }
        }))
        
        // Add "Cancel" button
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { action in
            print("Cancel button tapped")
        }))
        
        // Present the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didTapShowBtn(_ sender: Any) {
//        showAlert()
        // Uncomment the desired alert to test
////         showConfirmationAlert()
//         showActionSheet()
         showTextInputAlert()
    }
}


