//
//  CharacterTableViewCell.swift
//  Dragon Ball Super
//
//  Created by Shivam Sharma on 6/6/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String) {
        mainImg.image = image
        mainLabel.text = text
    }

}
