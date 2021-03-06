//
//  addingCallingItemTableViewController.swift
//  checklist
//
//  Created by 北島　志帆美 on 2019-12-18.
//  Copyright © 2019 北島　志帆美. All rights reserved.
//

import UIKit

protocol AddItemTableViewControllerDelegate {
     func addItemTableViewControllerDidCancel(_ controller: addingCallingItemTableViewController)
       func addItemViewController(_ controller: addingCallingItemTableViewController, didFinishAdding item: callingCellItem)
}

class addingCallingItemTableViewController: UITableViewController {
    
    var item = callingCellItem()
    var callingCellList = CallingCellList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  9
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "name calling for", for: indexPath) as? NameCallingForAddingTableViewCell)!

            // Configure the cell...
            

            return cell
        }
        else if indexPath.section == 1 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "local date", for: indexPath) as? LocalDateAddingTableViewCell)!

            // Configure the cell...
            item.localDate = cell.textField.text!

            return cell
        }
        else if indexPath.section == 2 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "local time", for: indexPath) as? LocalTimeAddingTableViewCell)!

            // Configure the cell...
            item.localTime = cell.textField.text!

            return cell
        }
        else if indexPath.section == 3 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "destination name", for: indexPath) as? DestinationNameAddingTableViewCell)!
 
            // Configure the cell...

            item.destinationName = cell.textFiled.text!
            
            return cell
        }
        else if indexPath.section == 4 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "jet lag", for: indexPath) as? JetLagAddingTableViewCell)!

            // Configure the cell...
            
            item.jetLag = cell.textField.text!

            return cell
        }
        else if indexPath.section == 5 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "destination time", for: indexPath) as? DestinationTimeAddingTableViewCell)!

            // Configure the cell...
            item.localTime = cell.textField.text!

            return cell
        }
        else if indexPath.section == 6 {
                let cell = (tableView.dequeueReusableCell(withIdentifier: "notification", for: indexPath) as? NotificationTimeAddingTableViewCell)!

                // Configure the cell...
            item.notification = cell.textField.text!
                return cell
            }
        else if indexPath.section == 7 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "place calling at", for: indexPath) as? PlaceCallingAtAddingTableViewCell)!

            // Configure the cell...
            item.placeCallingAt = cell.textField.text!

            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "map", for: indexPath) as? MapPlaceCallingAtTableViewCell)!
 
            // Configure the cell...

            return cell
        }
        
        
    }
    
    @IBAction func add(_ sender: Any) {
        
        let item = callingCellItem()
        
//        let arrayTextFields = [nameCallingFortextField, localDateTextField, localTimeTextField, destinationNameTextField,jetLagTextField,destinationTimeTextField,notificationTextField, placeCallingAtTextField]
//        var itemVariables = [item.nameCallingFor,item.localDate, item.localTime, item.destinationName, item.jetLag, item.destinationTime, item.notification, item.placeCallingAt]
//        
////        item.nameCallingFor = nameCallingFortextField.text!
//        
//        for index in 0 ..< arrayTextFields.count {
//            itemVariables[index] = arrayTextFields[index]!.text!
//        }
        
    }
    
    @IBOutlet weak var nameCallingFortextField: UITextField!
    @IBOutlet weak var localDateTextField: UITextField!
    @IBOutlet weak var localTimeTextField: UITextField!
    @IBOutlet weak var destinationNameTextField: UITextField!
    @IBOutlet weak var jetLagTextField: UITextField!
    @IBOutlet weak var destinationTimeTextField: UITextField!
    @IBOutlet weak var notificationTextField: UITextField!
    @IBOutlet weak var placeCallingAtTextField: UITextField!
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
