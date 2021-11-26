//
//  BRTabBarController.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/23/21.
//

import UIKit

class BRTabBarController: UITabBarController, UITabBarControllerDelegate {
private let internetsVC = InternetsViewController()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        let barItem1 = UITabBarItem(title: "Internets", image: UIImage(systemName: "house"), tag: 1)
        internetsVC.tabBarItem = barItem1
        self.viewControllers?.append(internetsVC)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
