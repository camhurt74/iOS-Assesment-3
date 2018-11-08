//
//  personCell.swift
//  Week3Assessment
//
//  Created by Cameron Hurt on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var faveThingLabel: UILabel!
    let library = Library.sharedInstance
    
    
 
    
    
    func setup(person: Person) {
        nameLabel.text = person.name
        faveThingLabel.text = person.favoriteThing
        backgroundColor = person.favoriteColor
        
    }
    
}
