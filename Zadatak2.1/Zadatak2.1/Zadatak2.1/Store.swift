//
//  StoreStruct.swift
//  Zadatak2.1
//
//  Created by Aleksandar Stojanovic on 10/10/21.
//

import Foundation
import UIKit

struct StoresResult: Codable {
    var stores: [Store]
}

struct Store: Codable {
    var name: String
    var city: String
    var address: String
    var zipcode: String
    var state: String
    var phone: String
    var storeLogoURL: String
    
    var storeLogo: UIImage {
        if let url = URL(string: storeLogoURL),
           let data = try? Data(contentsOf: url) {
            return UIImage(data: data) ?? UIImage()
        }   else {
            return UIImage()
        }
    }
}

extension Store: CustomStringConvertible {
    var description: String {
        return "\(String(describing: name))"
    }
}
