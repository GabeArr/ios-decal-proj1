//
//  MealTableViewController.swift
//  ToDoList
//
//  Created by Gabriel Arreola on 10/20/16.
//  Copyright © 2016 Gabriel Arreola. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var meals = [Meal]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        
//        // Use the edit button item provided by the table view controller.
//        navigationItem.leftBarButtonItem = editButtonItem

        // Load the sample data.
        loadSampleMeals()
    }
    
    func loadSampleMeals() {
//        let meal1 = Meal(name: "Caprese Salad")!
//        
//        let meal2 = Meal(name: "Chicken and Potatoes")!
//        
//        let meal3 = Meal(name: "Pasta with Meatballs")!
//        meals += [meal1, meal2, meal3]
//        
//        print(meal1)
//        print("===========================================================")
//        print(meal2)
//        print("===========================================================")
//        print(meal3)
//        print("===========================================================")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MealTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MealTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.nameLabel.text = meal.name
        print("am i printing out? SOMEONE HELP ME PLEASE")
        print(cell.nameLabel.text)
        print(meal.name)

        return cell
    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            meals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.cellForRow(at: indexPath)
        let todo = meals[indexPath.row]
        todo.completed = !todo.completed
        if todo.completed {
            cell?.accessoryType = UITableViewCellAccessoryType.checkmark
        } else{
            cell?.accessoryType = UITableViewCellAccessoryType.none
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        
        print("hahahahahahahahahahahahaha what is happening am i not going in my if statement")
//        let newIndexPath = NSIndexPath(row: meals.count, section: 0)
//        let meal = ViewController.meal
//        meals.append(meal)
//        tableView.insertRows(at: [newIndexPath as IndexPath], with: .bottom)
        if let sourceViewController = sender.source as? ViewController, let meal = sourceViewController.meal {
            // Add a new meal.
            let newIndexPath = NSIndexPath(row: meals.count, section: 0)
            meals.append(meal)
            tableView.insertRows(at: [newIndexPath as IndexPath], with: .bottom)
            print("bahahahahahahahahahahahahaha ahahahaha what is going on i need help ====================================================================================")
        }
    }
    
}
