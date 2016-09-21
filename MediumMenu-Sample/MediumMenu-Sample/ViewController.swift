//
//  ViewController.swift
//  MediumMenu-Sample
//
//  Created by pixyzehn on 2/8/15.
//  Copyright (c) 2015 pixyzehn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()

        let item = UIBarButtonItem(image: UIImage(named: "medium_icon"), style: .Plain, target: navigationController, action: #selector(MediumMenuController.showMenu))
        item.imageInsets = UIEdgeInsetsMake(-10, 0, 0, 0)
        item.tintColor = UIColor.blackColor()
        navigationItem.leftBarButtonItem = item
    } 
}

extension UINavigationBar {
    public override func sizeThatFits(size: CGSize) -> CGSize {
        return CGSizeMake(UIScreen.mainScreen().bounds.size.width, 60)
    }
}
