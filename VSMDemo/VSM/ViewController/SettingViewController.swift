//
//  SettingViewController.swift
//  VSM
//
//  Created by jing on 05/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import CareKit

class SettingViewController: UINavigationController {

    let settingVC = OCKConnectViewController(contacts: nil)
    
    //MARK: - Init
    
    public init(){
        settingVC.title = NSLocalizedString("Setting", comment: "Setting")
        settingVC.tabBarItem = UITabBarItem(title: NSLocalizedString("Setting", comment: "Setting"), image: UIImage(named: "connect"), selectedImage: UIImage(named: "connect-filled"))
        super.init(rootViewController: settingVC)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    //MARK: - MemoryWarning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
