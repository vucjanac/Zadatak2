//
//  ViewController.swift
//  Zadatak2
//
//  Created by Aleksandar Stojanovic on 9/23/21.
//

import UIKit

class ViewController: UITableViewController {
    var stores = [Store]()
    var storeLogoURL = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://sandbox.bottlerocketapps.com/BR_Android_CodingExam_2015_Server/stores.json"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
}
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonStore = try? decoder.decode(Stores.self, from: json) {
            stores = jsonStore.stores
            tableView.reloadData()
        }
}
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let store = stores[indexPath.row]
        cell.textLabel?.text = store.name
        cell.detailTextLabel?.text = store.city
        return cell
    }
}

