//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Sanjay Purswani on 23/10/2016.
//  Copyright © 2016 Sanjay Purswani. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
