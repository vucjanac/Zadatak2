//
//  ViewController.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/22/21.
//

import UIKit
import MapKit

class ViewController: UICollectionViewController {
    var diner = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addMapNavigationItem()0
        
                let urlString = "https://s3.amazonaws.com/br-codingexams/restaurants.json"
                if let url = URL(string: urlString) {
                    if let data = try? Data(contentsOf: url) {
        
                    }
                }
            }
        
            func parse(json: Data) {
                let decoder = JSONDecoder()
                if let jsonRestaurants =  try? decoder.decode(Diner.self, from: json) {
                    diner = jsonRestaurants.restaurants
                    collectionView.reloadData()
                }
            }
    
        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return diner.count
        }
        
        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Restaurant", for: indexPath) as? RestaurantCell
            else {
                fatalError("You should consider going on a diet.")
                }
                return cell
        }
        
    func addMapNavigationItem(){
        let barButton = UIBarButtonItem.init(image: UIImage(named:"icon_map"), style: .plain, target: self, action: #selector(addMapItem))
        self.navigationItem.rightBarButtonItem = barButton
    }

    @objc func addMapItem(sender:UIBarButtonItem){
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let maps = storyboard.instantiateViewController(withIdentifier: "RestaurantMapViewController") as! RestaurantMapViewController
        maps.items = self.items
        self.present(maps, animated: true, completion: nil)
    }
        
}
        
        
        
    
    
