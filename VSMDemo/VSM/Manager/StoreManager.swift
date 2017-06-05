//
//  StoreManager.swift
//  VSM
//
//  Created by jing on 05/06/2017.
//  Copyright © 2017 jing. All rights reserved.
//

import UIKit
import Apollo
import CareKit.OCKCarePlanStore

class StoreManager: NSObject {

    //MARK: - Member
    
    static private var careStoreInstance: OCKCarePlanStore?
    
    static internal let apolloClient = ApolloClient(url: URL(string: "http://192.168.31.147:4000/graphql")!)
    
    //MARK: - Method
    
    static func getCareStore() -> OCKCarePlanStore? {
        if let careStoreInstance = StoreManager.careStoreInstance {
            return careStoreInstance
        } else {
            let fileManager = FileManager()
            
            guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).last else {
                return nil
            }
            
            let storeURL = documentDirectory.appendingPathComponent("iHealth01CareKitStore")
            
            
            if !fileManager.fileExists(atPath: storeURL.path) {
                try! fileManager.createDirectory(at: storeURL, withIntermediateDirectories: true, attributes: nil)
            }
            
            StoreManager.careStoreInstance = OCKCarePlanStore(persistenceDirectoryURL: storeURL)
            
            return StoreManager.careStoreInstance
        }
    }
    
}
