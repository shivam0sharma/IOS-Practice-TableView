//
//  ViewController.swift
//  Dragon Ball Super
//
//  Created by Shivam Sharma on 5/31/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var characters = ["http://images.designntrend.com/data/images/full/74442/goku.jpg",
                      "http://orig06.deviantart.net/ecb9/f/2016/080/2/5/vegeta__dragonball_super_by_salvamakoto-d9vyna5.png",
                      "http://cdn4.twinfinite.net/wp-content/uploads/2016/11/dragon-ball-super-gohan.jpeg",
                      "http://otaku-w9pxf76zfsktmx3e.stackpathdns.com/wp-content/uploads/2016/08/1445919047-366d33fd41bb2e2f9b96ee7e9b143cf2.png",
                      "http://otaku-w9pxf76zfsktmx3e.stackpathdns.com/wp-content/uploads/2016/04/1445587385-5f9e194abc6ca82f528c59f763ea49c1.jpeg"]
    
    var names = ["Goku", "Vegeta", "Gohan", "Beerus", "Whis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CharacterTableViewCell {
            
            var img: UIImage!
            
            let url = URL(string: characters[indexPath.row])!
            if let data = NSData(contentsOf: url) {
                img = UIImage(data: data as Data)
            } else {
                img = UIImage(named: "default")
            }
            
            cell.configureCell(image: img, text: names[indexPath.row])
            
            return cell
        } else {
            return CharacterTableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
}

