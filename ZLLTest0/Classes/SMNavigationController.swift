//
//  SMNavigationController.swift
//  StarMusic
//
//  Created by 小乐 on 2020/8/31.
//  Copyright © 2020 xiaole. All rights reserved.
//

import UIKit

class SMNavigationController: UINavigationController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationBar.tintColor = .black
        navigationBar.backgroundColor = .white
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black, .font: UIFont(name: "PingFangSC-Semibold", size: 17.0)!]
        let backIndicatorImage = UIImage(named: "icon_back_black")
        self.navigationBar.backIndicatorImage = backIndicatorImage
        self.navigationBar.backIndicatorTransitionMaskImage = backIndicatorImage
    }
        
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.setNavigationBarHidden(false, animated: false)
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
        
//    override var shouldAutorotate: Bool {
//        return false
//    }
//
//    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
//        return UIInterfaceOrientation.portrait
//    }
        
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        let currentViewController = self.topViewController
        if (currentViewController != nil) {
            let backItem = UIBarButtonItem.init(title: "", style: .plain, target: nil, action: nil)
            currentViewController?.navigationItem.backBarButtonItem = backItem
        }
        super.pushViewController(viewController, animated: true)
    }
    
//    override var shouldAutorotate: Bool {
//
//        if (self.topViewController?.isKind(of: LMPlayerViewController.self))! {
//            return !LMBrightnessView.shared()!.isLockScreen
//
//        }
//
//        return false
//    }
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        
//        if (self.topViewController?.isKind(of: LMPlayerViewController.self))! {
//            return .allButUpsideDown
//        }
//        else {
//            return .portrait
//        }
//        
//        return.portrait
//    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        
        return .portrait
    }
}
