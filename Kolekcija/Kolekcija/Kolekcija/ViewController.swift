//
//  ViewController.swift
//  Kolekcija
//
//  Created by Aleksandar Stojanovic on 9/6/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var pictures = [String]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        let flowController = UICollectionViewFlowLayout()
        flowController.itemSize = CGSize(width: 100, height: 100)
        flowController.scrollDirection = .vertical
        flow.itemSize = CGSizeMake(cellWidthh, cellHeight)
        flowController.minimumLineSpacing = 0
        collectionView.collectionViewLayout = flowController
        
    
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("photo") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection
                                    section: Int) -> Int {
        return pictures.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Picture", for: indexPath)
        let image = UIImage(named: pictures[indexPath.item])
        
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 128).isActive = true

        cell.contentView.addSubview(imageView)
        return cell
    }
    
    
//    override func collectionView(_ tableView: UICollectionView, didSelect indexPath: IndexPath) {
//        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? UICollectionViewController {
//            vc.selectedImage = pictures[indexPath.row]
//            navigationController?.pushViewController(vc, animated: true)
//        }
//
//    }
}
