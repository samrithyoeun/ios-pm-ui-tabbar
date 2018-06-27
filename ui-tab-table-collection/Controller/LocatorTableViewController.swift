//
//  LocatorTableViewController.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class LocatorTableViewController: UITableViewController {
    
    let locatorCollection = [Locator(name: "Barcelona",image: "barcelona.jpg"),
                             Locator(name: "London", image: "london.jpg"),
                             Locator(name: "New York City", image: "newyork.jpg"),
                             Locator(name: "Paris", image: "paris.jpg"),
                             Locator(name: "San Francisco", image: "sanfrancisco.jpg"),
                             Locator(name: "Tokyo", image: "tokyo.jpg")]
    var pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locatorCollection.count
    }
 
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let locator = locatorCollection[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "locator table cell", for: indexPath) as! LocatorTableViewCell
        cell.loadData(with: locator)
        return cell
    }

}

