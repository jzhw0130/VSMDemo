//
//  RootViewController.swift
//  VSM
//
//  Created by jing on 04/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import Apollo
import CareKit
import ResearchKit


class RootViewController: UITabBarController {
    
    //MARK: - Member
    
    let carePlanVC = CarePlanViewController()
    let assessmentVC = AssessmentViewController()
    let settingVC = SettingViewController()
    
    
    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setViewControllers([carePlanVC, assessmentVC, settingVC], animated: true)
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
