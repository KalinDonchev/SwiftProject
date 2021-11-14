//
//  Storage.swift
//  Exam14Nov
//
//  Created by Kalin Donchev (V) on 14.11.21.
//

import Foundation


class Storage {
    var accounts = [Account]()
    
    
    func addAccount(account: Account) {
        accounts.append(account)
    }
}
