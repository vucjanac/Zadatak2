////
////  StoreListVC.swift
////  Zadatak2
////
////  Created by Aleksandar Stojanovic on 9/27/21.
////
//
//import UIKit
//
//class StoreListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return stores.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
//    }
//    
//    
//    var stores = [Store]()
//    var tableView = UITableView()
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureTableView()
//        
//        let urlString = "http://sandbox.bottlerocketapps.com/BR_Android_CodingExam_2015_Server/stores.json"
//        if let url = URL(string: urlString) {
//            if let data = try? Data(contentsOf: url) {
//                parse(json: data)
//            }
//        }
//        
//        func configureTableView() {
//            view.addSubview(tableView)
//            setTableViewDelegates()
//            
//        }
//        
//        func parse(json: Data) {
//            let decoder = JSONDecoder()
//            
//            if let jsonStore = try? decoder.decode(Stores.self, from: json) {
//                stores = jsonStore.stores
//                tableView.reloadData()
//                
//            }
//            
//            //        register cells
//            //        set constraints
//            
//        }
//        
//        func setTableViewDelegates() {
//            tableView.delegate = self
//            tableView.dataSource = self
//        }
//        
//    }
//    
//}
//
