//
//  Restaurants.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/24/21.
//

import Foundation

struct Diner: Codable {
    let name: String?
    let backgroundImageURL: String
    let category: String
    let contact: String?
    let location: String
}

struct Diners: Codable {
    let restaurants: [Diner]
}
