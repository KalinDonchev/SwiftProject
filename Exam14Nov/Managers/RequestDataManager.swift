//
//  RequestDataManager.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import Alamofire

struct API {
    static let statusURL = URL(string: "https://eth1.trezor.io/api/v2/")!
}

enum RequestManagerError: Error {
    case cannotParseData
}

class RequestManager {
    class func fetchStatusData(completion: @escaping ((_ error: Error?) -> Void)) {
//        AF.request(API.statusURL,
//                   method: .get)
//            .responseJSON { response in
//                guard response.error == nil else {
//                    completion(response.error)
//                    return
//                }
//                guard let statusJSON = response.value as? [StatusBlock: Any] else {
//                    completion(RequestManagerError.cannotParseData)
//                    return
//                }
//                guard let statusJSON = response.value as? [String: Any] else {
//                    completion(RequestManagerError.cannotParseData)
//                    return
//                }
//                if let backend = statusJSON["backend"] as? Backend {
//                    print(backend)
//                }
//                print("heere")
            
//          ======     SIMULATE FETCHING AND WRITING  ======
        
                let fakeBlockbook = FakeBlockbook()
                let fakeBackend = FakeBackend()
 //               print("here")

                DispatchQueue.main.async {
                    try? LocalDataManager.realm.write {
                        LocalDataManager.realm.add(fakeBackend, update: .all)
                     }
                   try? LocalDataManager.realm.write {
                       LocalDataManager.realm.add(fakeBlockbook, update: .all)
                    }
                
                    NotificationCenter.default.post(name: .statusDataLoaded, object: nil)
                    completion(nil)
                }
           // }
    }
}
