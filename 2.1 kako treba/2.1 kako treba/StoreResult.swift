//
//  StoreResult.swift
//  2.1 kako treba
//
//  Created by Aleksandar Stojanovic on 10/12/21.
//

import Foundation

struct StoreResult: Codable {
    let stores: [Store]
}

struct Store: Codable {
    let address: String
    let name: String
    let city: String
    let phone: String
    let storeLogoURL: String
    let state: String
    let zipcode: String
    let longitude: String
    let latitude: String
}
