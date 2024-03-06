//
//  HandbookCollectionViewCell.swift
//  Design+Code2.0
//
//  Created by SerhiiAdmin on 01.03.2024.
//

import UIKit

class HandbookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var overlay: UIView!
    @IBOutlet var banner: UIImageView!
    @IBOutlet var logo: CustomImageView!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    
    let gradient = CAGradientLayer()
    
    override public func layoutSubviews() {
          super.layoutSubviews()
          super.layoutIfNeeded()
      }
    override public func awakeFromNib() {
        super.awakeFromNib()
              layer.shadowColor = UIColor(named: "Shadow")!.cgColor
              layer.shadowOpacity = 0.25
              layer.shadowOffset = CGSize(width: 0, height: 5)
              layer.shadowRadius = 10
              layer.masksToBounds = false
              layer.cornerRadius = 30
              layer.cornerCurve = .continuous
              
              gradient.startPoint = CGPoint(x: 0, y: 0)
              gradient.endPoint = CGPoint(x: 1, y: 1)
              gradient.frame = overlay.frame
              gradient.cornerCurve = .continuous
              gradient.cornerRadius = 30
        
        overlay.layer.insertSublayer(gradient, at: 0)
        overlay.layer.cornerRadius = 30
        overlay.layer.cornerCurve = .continuous
    }
    
    override public func prepareForReuse() {
        super.prepareForReuse()
    }
}
