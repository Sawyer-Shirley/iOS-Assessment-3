//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Creating the actual cells and returning them
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! CustomTableViewCell
        
        let person = people[indexPath.row]
        cell.setup(person: person)
        
        return cell
}

    

    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Adding 3 basic people
        people.append(Person(name: "Sawyer", favoriteThing: "Video Games", favoriteColor: UIColor.green))
        people.append(Person(name: "Gabby", favoriteThing: "Chocolate", favoriteColor: UIColor.red))
        people.append(Person(name: "Miranda", favoriteThing: "Cats", favoriteColor: UIColor.blue))

        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
