//
//  StoreCell.swift
//  Zadatak2
//
//  Created by Aleksandar Stojanovic on 9/27/21.
//

import UIKit


class ViewControllerClass: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//
//class StoreCell: UITableViewCell {
//
//    var storeLogo = UIImageView()
//    var storeData = UILabel()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(storeLogo)
//        addSubview(storeData)
//
//        configureStoreLogo()
//        configureStoreData()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func configureStoreLogo() {
//        storeLogo.layer.cornerRadius = 5
//        storeLogo.clipsToBounds = true
//    }
//
//    func configureStoreData() {
//        storeData.numberOfLines = 0
//        storeData.adjustsFontSizeToFitWidth = true
//    }
//
//}
