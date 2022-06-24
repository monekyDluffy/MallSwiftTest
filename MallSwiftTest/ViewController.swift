//
//  ViewController.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/5/29.
//

import UIKit

import SnapKit
class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var mstring = "abc"
        mstring += "string"
        print(  "sam  string \(mstring)")
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem.image = UIImage(named: "home")
        homeVC.tabBarItem.selectedImage = UIImage(named: "home_selected")
        homeVC.title = "首页"
        homeVC.tabBarItem.setTitleTextAttributes([.foregroundColor:UIColor.hexColor((0x333333))], for: .selected)
        
        let homeNavgationcontroller = UINavigationController.init(rootViewController: homeVC)
        self.addChild(homeNavgationcontroller)
        
        
        
        
        let mineVC = MineViewController()
        mineVC.tabBarItem.image = UIImage.init(named: "mine");
        mineVC.tabBarItem.selectedImage = UIImage.init(named: "mine_selected")
        
        mineVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.hexColor(0x333333)], for: .selected);
        mineVC.title = "我的"
        mineVC.tabBarItem.title = "我的"
        let mineNavgationController = UINavigationController(rootViewController: mineVC)
        
        self.addChild(mineNavgationController)
        
        
        
    }


}

