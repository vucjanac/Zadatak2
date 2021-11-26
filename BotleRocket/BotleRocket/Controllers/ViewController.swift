//
//  ViewController.swift
//  BotleRocket
//
//  Created by Aleksandar Stojanovic on 11/22/21.
//

import UIKit
import MapKit

class ViewController: UICollectionViewController {
    
    var flowLayout = UICollectionViewFlowLayout()
    
    var diners = [Diner]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let urlString = "https://s3.amazonaws.com/br-codingexams/restaurants.json"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                self.parse(json: data)
            }
        }
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        if let jsonRestaurants =  try? decoder.decode(DinersResponse.self, from: json) {
            diners = jsonRestaurants.restaurants
            collectionView.reloadData()
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return diners.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Restaurant", for: indexPath) as? RestaurantCell
        else {
            fatalError("You should consider going on a diet.")
        }
        
        cell.label?.text = diners[indexPath.row].name
        cell.backgroundColor = .gray
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        performSegue(withIdentifier: "DinerDetails", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? RestaurantCell else { return }
        guard let destination = segue.destination as? RestaurantDetailsViewController else { return }
        
        
//        guard let cell = sender as? CollectionViewCell else { return }
//        guard let controller = segue.destination as? DetailsViewController else { return }
//        controller.restaurant = cell.restaurant
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 180)
    }
}
