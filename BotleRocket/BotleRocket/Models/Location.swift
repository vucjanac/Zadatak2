//
//  Location.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/24/21.
//

import Foundation

struct Location: Codable {
    var address: String
    var crossStreet: String?
    var lat: Double
    var lng: Double
    var postalCode: String?
    var cc: String
    var city: String
    var state: String
    var country: String
    var formattedAddress: [String]
    
}
