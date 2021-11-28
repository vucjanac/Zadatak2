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
    let contact: Contact?
    let location: Location?
}

struct DinersResponse: Codable {
    let restaurants: [Diner]
}
