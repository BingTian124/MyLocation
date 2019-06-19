//
//  MyTabBarController.swift
//  MyLocation
//
//  Created by Bing Tian on 6/14/19.
//  Copyright © 2019 tianbing. All rights reserved.
//

import UIKit
class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override var childForStatusBarStyle: UIViewController?{
        return nil
    }
}
