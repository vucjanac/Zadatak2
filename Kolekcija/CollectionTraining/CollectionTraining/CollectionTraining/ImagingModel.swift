//
//  ImagingModel.swift
//  CollectionTraining
//
//  Created by Aleksandar Stojanovic on 9/10/21.
//

import UIKit

class ImagingModel {
    let images: [UIImage] = [
        UIImage(named: "photo1"),
        UIImage(named: "photo2"),
        UIImage(named: "photo3"),
        UIImage(named: "photo4"),
        UIImage(named: "photo5"),
        UIImage(named: "photo6"),
        UIImage(named: "photo7"),
        UIImage(named: "photo8"),
        UIImage(named: "photo9"),
        UIImage(named: "photo10"),
        UIImage(named: "photo11"),
        UIImage(named: "photo12"),
    ].compactMap({ $0 })
    }
