//
//  LoginController.swift
//  MediumMenu-Sample
//
//  Created by J HD on 16/9/21.
//  Copyright © 2016年 pixyzehn. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 100, width: 100, height: 40)
        button.setTitle("loginsuccess", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.backgroundColor = UIColor.cyanColor()
        button.addTarget(self, action: #selector(LoginController.goMenu), forControlEvents: .TouchUpInside)
        view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    func goMenu(){
        let navi = UINavigationController(rootViewController: HomeViewController())
        
        let homeViewController = HomeViewController()
        navi.setViewControllers([homeViewController], animated: false)
        
        let item1 = MediumMenuItem(title: "Home") { [unowned navi] in
            let homeViewController = HomeViewController()
            navi.setViewControllers([homeViewController], animated: false)
        }
        
        let item2 = MediumMenuItem(title: "Top stories") { [unowned navi] in
            let topStoriesViewController = TopStoriesViewController()
            navi.setViewControllers([topStoriesViewController], animated: false)
        }
        
        let item3 = MediumMenuItem(title: "Bookmarks") { [unowned navi] in
            let bookMarksViewController = BookmarksViewController()
            navi.setViewControllers([bookMarksViewController], animated: false)
        }
        
        let item4 = MediumMenuItem(title: "Help") { [unowned navi] in
            let helpViewController = HelpViewController()
            navi.setViewControllers([helpViewController], animated: false)
        }
        
        let item5 = MediumMenuItem(title: "Sign out") { [unowned navi] in
            let signoutViewController = SignoutViewController()
            navi.setViewControllers([signoutViewController], animated: false)
        }
        
        
        self.navigationController?.pushViewController(MediumMenuController(items: [item1, item2, item3, item4, item5], childController: navi), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
