//
//  Blockbook.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation
import Alamofire
import RealmSwift

class Blockbook: Object {
    @Persisted var coin: String
    @Persisted var bestHeight: Int
    @Persisted var lastBlockTime: String
}
