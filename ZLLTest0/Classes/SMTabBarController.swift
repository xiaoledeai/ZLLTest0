//
//  SMTabBarController.swift
//  StarMusic
//
//  Created by 小乐 on 2020/8/31.
//  Copyright © 2020 xiaole. All rights reserved.
//

import UIKit

class SMTabBarController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.addChildVC()
    }
    
    func addChildVC() {
        //self.setupOneChildViewController(ViewController(), title: "音乐", normalImage: "tabbarOne_normal", selectedImage: "tabbarOne_selected")
        //self.setupOneChildViewController(LMVC1ViewController(), title: "视频", normalImage: "tabbarTwo_normal", selectedImage: "tabbarTwo_selected")
        //self.setupOneChildViewController(LiveBroadcastViewController(), title: "直播", normalImage: "tabbarThree_normal", selectedImage: "tabbarThree_selected")
    }
    
    fileprivate func setupOneChildViewController(_ vc: UIViewController, title: String, normalImage: String, selectedImage: String) {
        let nav = SMNavigationController(rootViewController: vc)
        nav.tabBarItem = UITabBarItem(title: title, image: UIImage(named: normalImage), selectedImage: UIImage(named: selectedImage))
        // 设置选中图片颜色，否则图片会变成系统默认的蓝色
        //nav.tabBarItem.selectedImage = nav.tabBarItem.selectedImage!.withRenderingMode(.alwaysOriginal)
        self.addChildViewController(nav)
    }
    
//    override var shouldAutorotate: Bool {
//
//        let nav:UINavigationController = (self.viewControllers?[self.selectedIndex])! as! UINavigationController
//        if (nav.topViewController?.isKind(of: LMPlayerViewController.self))! {
//            return !LMBrightnessView.shared()!.isLockScreen
//        }
//
//        return false
//    }
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        
//        if self.selectedIndex > 2 || self.selectedIndex < 0 {
//            self.selectedIndex = 0
//        }
//        let nav:UINavigationController = (self.viewControllers?[self.selectedIndex])! as! UINavigationController
//        if (nav.topViewController?.isKind(of: LMPlayerViewController.self))! {
//            return .allButUpsideDown
//        }
//        else {
//            return .portrait
//        }
//        return.portrait
//    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        
        return .portrait
    }
}
