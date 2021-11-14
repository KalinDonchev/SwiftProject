//
//  Backend.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import RealmSwift


class Backend: Object {
    @Persisted var chain: String
    @Persisted var difficulty: String
    @Persisted var bestBlockHash: String
    @Persisted var blocks: Int
    @Persisted var version: String
}
