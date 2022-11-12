//
//  OnboardingViewController.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/30/22.
//

import UIKit

class OnboardingViewController:
    UIViewController {

    @IBOutlet weak var collectionView:
    UICollectionView!
    @IBOutlet weak var nextButton:
    UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    var slides: [OnboardingSlide] = []
   // var slides: [onboardingSlide] = []
    var currentPage = 0 {
           didSet {
               pageControl.currentPage = currentPage
               if currentPage == slides.count - 1 {
                   nextButton.setTitle("Get Started", for: .normal)
               } else {
                   nextButton.setTitle("Next", for: .normal)
               }
           }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
                   OnboardingSlide(title: "Seam provides students the ability to list their stuff", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide2")),
                   OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: #imageLiteral(resourceName: "slide1")),
                   OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: #imageLiteral(resourceName: "slide3"))   // Do any additional setup after loading the view.
        ]
        pageControl.numberOfPages = slides.count
           }
    

    @IBAction func nextButtonClicked(_ sender:UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
