//
//  RestaurantDetailsViewController.swift
//  BotleRocket
//
//  Created by Vlastimir Radojevic on 26.11.21..
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addMapNavigationItem()
    }

    
    func addMapNavigationItem(){
        let barButton = UIBarButtonItem.init(image: UIImage(named:"icon_map"), style: .plain, target: self, action: #selector(mapButtonClicked))
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func mapButtonClicked() {
        
    }

}
