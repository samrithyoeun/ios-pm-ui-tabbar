//
//  SettingVC.swift
//  ui-tab-table-collection
//
//  Created by PM Academy 3 on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class SettingVC: UITableViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageArray = [UIImage(named: "barcelona.jpg"),
                        UIImage(named: "sanfrancisco.jpg"),
                        UIImage(named: "barcelona.jpg")
                        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0 ..< imageArray.count {
            let imageView = UIImageView()
            imageView.contentMode = .scaleToFill
            imageView.image = imageArray[i]
            let xPosition = view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: view.frame.width
                , height: scrollView.frame.height)
            print("size of imageview in scroll view is\(imageView.frame.size)")
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
        }
    }
}
