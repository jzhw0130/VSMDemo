//
//  CarePlanViewController.swift
//  VSM
//
//  Created by jing on 05/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import CareKit
import Apollo

class CarePlanViewController: UINavigationController {
    
    //MARK: - Member
    
    let careCardVC = OCKCareCardViewController(carePlanStore: StoreManager.getCareStore()!)
    
    var watcher: GraphQLQueryWatcher<AssessmentListQuery>?
    
    let apollo = StoreManager.apolloClient
    
    //MARK: - Init

    public init(){
        careCardVC.title = NSLocalizedString("CarePlan", comment: "CarePlan")
        careCardVC.tabBarItem = UITabBarItem(title: NSLocalizedString("CarePlan", comment: "CarePlan"), image: UIImage(named: "carecard"), selectedImage: UIImage(named: "carecard-filled"))
        super.init(rootViewController: careCardVC)
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
        commandTestMutation()
    }

    //MARK: - MemoryWarning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - Test GraphQL Api
    
    func commandTestQueryGraphQL() -> Void {
        watcher = apollo.watch(query: AssessmentListQuery()) { (result, error) in
            if let err = error {
                NSLog("error:\(err)")
            } else {
                NSLog("result:\(result!)")
            }
        }
    }
    
    
    func commandTestMutation() -> Void {
        apollo.perform(mutation: InitEpMutation()) { (result, error) in
            if let error = error {
                //Error for server logical
                if let responseError = (error as? GraphQLHTTPResponseError) {
                    if let errorData = responseError.body {
                        let errorJson = try? JSONSerialization.jsonObject(with: errorData, options: JSONSerialization.ReadingOptions.mutableContainers) as! JSONObject
                        let errorDic = (errorJson? ["errors"] as? [Any])?[0] as? [String: Any]
                        let codeNumber = errorDic? ["code"] as? Int
                        let key = errorDic? ["key"]
                        let message = errorDic? ["message"]
                        
                        if let message = message {
                            NSLog("\n code:\(String(describing: codeNumber))\n key:\(String(describing: key))\n message:\(String(describing: message))")
                        } else {
                            NSLog("responseError_:\(responseError)")
                        }
                        
                    } else {
                        NSLog("responseError__:\(responseError)")
                    }
                    
                } else if let error = (error as NSError?){
                    //Error for network
                    NSLog("responseError___code:\(error.code) description:\(error.localizedDescription)")
                } else {
                    //Error Unknown
                    NSLog("responseError____\(error.localizedDescription)")
                }
            } else {
                NSLog("result:\(String(describing: result))")
            }
        }
    }
    

}
