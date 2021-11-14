//
//  FakeBackend.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import RealmSwift

class FakeBackend: Object {
    @Persisted var chain: String = "mainnet"
    @Persisted var difficulty: String = "10591754572218460"
    @Persisted var bestBlockHash: String = "0x7ad1c437f2ddb6b92c1e33f468dab5800c42a806f9b13ba467c86ec0abe0b238"
    
    static override func primaryKey() -> String? {
        return "chain"
    }
}
