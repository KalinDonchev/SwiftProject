//
//  LocalDataManager.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import RealmSwift

class LocalDataManager {
    static let realm = try! Realm(configuration: realmConfiguration, queue: DispatchQueue.main)
    
    static let realmConfiguration: Realm.Configuration = {
        var configuration = Realm.Configuration.defaultConfiguration
        configuration.schemaVersion = 5
        configuration.deleteRealmIfMigrationNeeded = true
        configuration.migrationBlock = { (migration, version) in
            
        }
        return configuration
    }()
}
