//
//  ViewController.swift
//  Zadatak2.1
//
//  Created by Aleksandar Stojanovic on 10/10/21.
//

import UIKit
import SwiftUI

class ViewController: UITableViewController {
    
    var stores: [Store] = []
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableViewDelegates()
        tableView.register(StoreCell.self, forCellReuseIdentifier: "StoreCell")
        
        
        let urlString = "http://sandbox.bottlerocketapps.com/BR_Android_CodingExam_2015_Server/stores.json"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
        
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonStore = try? decoder.decode(StoresResult.self, from: json) {
            stores = jsonStore.stores
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func fetchImage(url: String) -> UIImage {
        
        let urlString = URL(string: url)
        
        var image = UIImage()
        
        if let imageData: NSData = NSData(contentsOf: urlString!) {
            image = UIImage(data: imageData as Data)!
        }
        
        return image
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return self.stores.count
        }
    
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let storeCell = tableView.dequeueReusableCell(withIdentifier: "StoreCell", for: indexPath) as? StoreCell else {
            return UITableViewCell()
        }
        let store = stores[indexPath.row]
        storeCell.setupCellWithData(store)
        
        if indexPath.row.isMultiple(of: 2) {
            storeCell.backgroundColor = .lightGray
        }   else {
            storeCell.backgroundColor = .yellow
        }
        
        
        return storeCell
    }


}
