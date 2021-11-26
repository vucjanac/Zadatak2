//
//  ViewController.swift
//  2.1 kako treba
//
//  Created by Aleksandar Stojanovic on 10/12/21.
//

import UIKit

class StoreTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        fetchStoreData()
    }

    func fetchStoreData() {
     
        guard let url = URL(string: "http://sandbox.bottlerocketapps.com/BR_Android_CodingExam_2015_Server/stores.json") else { return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let parseData = try JSONDecoder().decode(StoreResult.self, from: data)
                self.stores = parseData.stores
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
        } catch {
            print(error.localizedDescription)
        }
        } .resume()
    }
}
extension StoreTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
       1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: StoreTableViewCell.identifier, for: indexPath) as? StoreTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

