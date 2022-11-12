//
//  OnboardingCollectionViewCell.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/30/22.
//
import UIKit
class OnboardingCollectionViewCell:
    UICollectionViewCell {
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
     func setup(_ slide: OnboardingSlide) {
   // func setup(_ slide: OnboardingSlide) {
        
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}

