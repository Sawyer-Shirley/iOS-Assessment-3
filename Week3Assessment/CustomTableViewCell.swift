//
//  CustomTableViewCell.swift
//  Week3Assessment
//
//  Created by Sawyer Shirley on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var favoriteThingLabel: UILabel!
    @IBOutlet weak var personLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //sets up the specfic cells
    func setup(person: Person) {
        
        //Sets the personLabel to the person's name
        personLabel.text = person.name
        
        //Sets the favoriteThingLabel to the person's favorite thing
        favoriteThingLabel.text = person.favoriteThing
        
        //sets the cell's background color to the person's favorite color
        backgroundColor = person.favoriteColor
        
    }
}
