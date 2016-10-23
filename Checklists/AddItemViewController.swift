//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Sanjay Purswani on 23/10/2016.
//  Copyright © 2016 Sanjay Purswani. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}
