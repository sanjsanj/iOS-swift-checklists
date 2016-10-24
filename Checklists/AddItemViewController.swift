//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Sanjay Purswani on 23/10/2016.
//  Copyright © 2016 Sanjay Purswani. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
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
    
    @objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let oldText = textField.text! as NSString
        let newText = oldText.replacingCharacters(in: range, with: string) as NSString
        
        doneBarButton.isEnabled = (newText.length > 0)
        
        return true
    }
}
