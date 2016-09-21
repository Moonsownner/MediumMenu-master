//
//  AppDelegate.swift
//  MediumMenu-Sample
//
//  Created by pixyzehn on 2/8/15.
//  Copyright (c) 2015 pixyzehn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let vc = UINavigationController(rootViewController: LoginController())
        vc.navigationBarHidden = true
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }
}
