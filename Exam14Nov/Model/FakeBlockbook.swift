//
//  FakeBlockbook.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import RealmSwift

class FakeBlockbook: Object {
    @Persisted var id: String = "1"
    @Persisted var coin: String = "Etherum"
    @Persisted var bestHeight: Int = 13612829
    @Persisted var lastBlockTime: String = "2021-11-14T08:18:13.312191457Z"
    
    static override func primaryKey() -> String? {
        return "id"
    }
}
