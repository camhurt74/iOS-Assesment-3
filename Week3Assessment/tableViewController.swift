//
//  tableViewController.swift
//  Week3Assessment
//
//  Created by Cameron Hurt on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class tableViewController:  UIViewController {
    
  
    @IBOutlet var tableView: UITableView!
    
  
    
    
    let library = Library.sharedInstance
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        library.person.append(Person.init(name: "Cody", favoriteThing: "Kentucky Basketball", favoriteColor: .blue))
        library.person.append(Person.init(name: "Kaleb", favoriteThing: "Jesus", favoriteColor: .red))
        library.person.append(Person.init(name: "Cameron", favoriteThing: "Basketball", favoriteColor: .blue))
      
    }
    
    
}
extension tableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        return cell
    }
    
    
}
