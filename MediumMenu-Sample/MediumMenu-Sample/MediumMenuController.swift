//
//  MediumMenuController.swift
//  MediumMenu-Sample
//
//  Created by J HD on 16/9/21.
//  Copyright © 2016年 pixyzehn. All rights reserved.
//

import UIKit

class MediumMenuController: UIViewController {
    
    let menuView: MediumMenu
    let child: UIViewController
    
    init(items: [MediumMenuItem], childController: UIViewController){
        self.menuView = MediumMenu(items: items, forViewController: childController)
        self.child = childController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(menuView)
        addChildViewController(child)
        self.view.addSubview(child.view)
        child.view.frame = UIScreen.mainScreen().bounds
        child.didMoveToParentViewController(self)
        
    }
    
    func showMenu() {
        menuView.show()
    }

}
