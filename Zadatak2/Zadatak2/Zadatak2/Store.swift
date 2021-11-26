//
//  Picture.swift
//  Zadatak2
//
//  Created by Aleksandar Stojanovic on 9/23/21.
//

import Foundation

struct Store: Codable {
    var storeLogoURL: String
    var name: String
    var city: String
    var address: String
    var zipcode: String
    var state: String
    var phone: String
}

struct Stores: Codable {
    var stores: [Store]
}

