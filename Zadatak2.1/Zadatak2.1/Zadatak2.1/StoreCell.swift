//
//  StoreCell.swift
//  Zadatak2.1
//
//  Created by Aleksandar Stojanovic on 10/10/21.
//

import UIKit
import SwiftUI

class StoreCell: UITableViewCell {
    
//    struct Store: Codable {
//        var name: String
//        var city: String
//        var address: String
//        var zipcode: String
//        var state: String
//        var phone: String
//    }
    
//    struct Stores: Codable {
//        var stores: [Store]
//    }
    
    var storeLogoImageView = UIImageView()
    var storeLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(storeLogoImageView)
        addSubview(storeLabel)
        
        configurestoreLogoURL()
        configureStoreData()
        logoConstraints()
        dataConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configurestoreLogoURL() {
        storeLogoImageView.layer.cornerRadius = 3
        storeLogoImageView.clipsToBounds = true
        storeLogoImageView.sizeToFit()
    }
    
    func configureStoreData() {
        storeLabel.lineBreakMode = .byWordWrapping
        storeLabel.numberOfLines = 0
        storeLabel.adjustsFontSizeToFitWidth = true
    }
    
    func logoConstraints() {
        storeLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        storeLogoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        storeLogoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 1).isActive = true
        storeLogoImageView().resizable().frame(width: 0.2, height: height, alignment:
        )
        
    }
    
    func dataConstraints() {
        storeLabel.translatesAutoresizingMaskIntoConstraints = false
        storeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        storeLabel.leadingAnchor.constraint(equalTo: storeLogoImageView.trailingAnchor, constant: 20).isActive = true
        storeLabel.heightAnchor.constraint(equalTo: storeLogoImageView.heightAnchor).isActive = true
        storeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
     }
    
    func setupCellWithData(_ store: Store) {
        storeLogoImageView.image = store.storeLogo
        storeLabel.text = "\(store.name), Address: \(store.address), \(store.city)"
    }
}


