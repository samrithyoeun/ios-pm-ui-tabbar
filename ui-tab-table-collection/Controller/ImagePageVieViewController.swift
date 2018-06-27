//
//  ImagePageVieViewController.swift
//  ui-tab-table-collection
//
//  Created by Samrith Yoeun on 6/27/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class ImagePageVieViewController: UIPageViewController {

    lazy var viewControllerList: [UIViewController] = {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyBoard.instantiateViewController(withIdentifier: "firstVC")
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "secondVC")
        let thirdVC = storyBoard.instantiateViewController(withIdentifier: "thirdVC")
        return [firstVC, secondVC, thirdVC]
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let firstViewController = viewControllerList.first{
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
}

extension ImagePageVieViewController : UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        let previousIndex = vcIndex-1
        guard previousIndex >= 0 else {return nil}
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        let nextIndex = vcIndex + 1
        guard viewControllerList.count != nextIndex else {return nil}
        guard viewControllerList.count > nextIndex else {return nil}
        return viewControllerList[nextIndex]
    }
    
    
}
