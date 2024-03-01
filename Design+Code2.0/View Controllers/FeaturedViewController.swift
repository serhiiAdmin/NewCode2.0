//
//  ViewController.swift
//  Design+Code2.0
//
//  Created by SerhiiAdmin on 29.02.2024.
//

import UIKit

class FeaturedViewController: UIViewController {

    @IBOutlet var cardView: UIView!    
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var handbooksCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.layer.masksToBounds = false
        
    }
}
extension FeaturedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return handbooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell
        let handbook = handbooks[indexPath.item]
        
        cell.titleLabel.text = handbook.courseTitle
        cell.subtitleLabel.text = handbook.courseSubtitle
        cell.descriptionLabel.text = handbook.courseDescription
        cell.gradient.colors = handbook.courseGradient
        cell.logo.image = handbook.courseIcon
        cell.banner.image = handbook.courseBanner
        
        
        return cell
        
    }
    
    
}

