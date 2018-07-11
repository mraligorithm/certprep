//
//  HomeViewController.swift
//  certprep
//
//  Created by Alisher Abdukarimov on 7/10/18.
//  Copyright © 2018 Alisher Abdukarimov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // Outletes
    @IBOutlet weak var burgerBtn: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var welcomeMsgLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // Collection View outlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }

    
    // Setup View first to run fuction when the view is up the first time
    func setupView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        burgerBtn.addShadow(offset: CGSize(width: 0, height: 5), color: .black, radius: 10, opacity: 0.7)
        searchBtn.addShadow(offset: CGSize(width: 0, height: 5), color: .black, radius: 10, opacity: 0.7)
    }
    
}


extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topicCell", for: indexPath) as? TopicCell else {
            return UICollectionViewCell()
        }
        cell.layer.cornerRadius = 20
        return cell
    }
    
    
}
