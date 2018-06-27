//
//  LocatorTableViewCell.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class LocatorTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationImageView: UIImageView!
    
    func loadData(with locator: Locator){
        locationLabel.text = locator.name
        locationImageView.image = UIImage(named: locator.image)
    }
  
}
