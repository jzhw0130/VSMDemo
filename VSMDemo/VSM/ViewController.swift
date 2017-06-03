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

    let apollo = ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("App launch...")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

