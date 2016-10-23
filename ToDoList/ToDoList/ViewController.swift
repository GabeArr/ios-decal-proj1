//
//  ViewController.swift
//  ToDoList
//
//  Created by Gabriel Arreola on 10/19/16.
//  Copyright © 2016 Gabriel Arreola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
//    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    /*
     This value is either passed by `MealTableViewController` in `prepareForSegue(_:sender:)`
     or constructed as part of adding a new meal.
     */
    var meal: Meal?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        print("=========================================================================\n\n")
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
//        mealNameLabel.text = textField.text
    }
    
    // MARK: Navigation
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    // This method lets you configure a view controller before it's presented.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("what is going on why am i in this class\n\n\n\n========================================")
        print(sender)
        print(sender!)
        print(sender! as AnyObject)
        print(saveButton)
        if (sender! as AnyObject) === saveButton{
            print("what is happening\n\n\n")
            let name = nameTextField.text ?? ""
            // Set the meal to be passed to MealTableViewController after the unwind segue.
            meal = Meal(name:name)
            print(name)
            print("/n/n/n")
        }
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if saveButton === sender {
//            let name = nameTextField.text ?? ""
//        }
//    }
    
    // MARK: Actions
//    @IBAction func justPleaseWork(_ sender: UIButton) {
//        
//    }


}

