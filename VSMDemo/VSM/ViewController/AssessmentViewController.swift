//
//  AssessmentViewController.swift
//  VSM
//
//  Created by jing on 05/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import CareKit

class AssessmentViewController: UINavigationController {

    //MARK: - Member
    let assessmentVC = OCKSymptomTrackerViewController(carePlanStore: StoreManager.getCareStore()!)
    
    
    //MARK: - Init
    
    public init(){
        assessmentVC.title = NSLocalizedString("Assessment", comment: "Assessment")
        assessmentVC.tabBarItem = UITabBarItem(title: NSLocalizedString("Assessment", comment: "Assessment"), image: UIImage(named: "symptoms"), selectedImage: UIImage(named: "symptoms-filled"))
        super.init(rootViewController: assessmentVC)
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
