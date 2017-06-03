//
//  ViewController.swift
//  VSM
//
//  Created by jing on 03/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    let apollo = ApolloClient(url: URL(string: "http://192.168.2.107:4000/graphql")!)

    var watcher: GraphQLQueryWatcher<AssessmentListQuery>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("App launch...")
        
//        watcher = apollo.watch(query: AssessmentListQuery()) { (result, error) in
//            if let err = error {
//                NSLog("error:\(err)")
//            } else {
//                NSLog("result:\(result!)")
//            }
//        }
        
        apollo.perform(mutation: InitEpMutation()) { (result, error) in
            if let err = error {
                NSLog("error:\(err)")
            } else {
                NSLog("result:\(result!)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

