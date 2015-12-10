//
//  ViewController.swift
//  morfSequence
//
//  Created by Sebastian Drew on 12/8/15.
//  Copyright © 2015 theorize. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var sequenceImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var descView: UIView!
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    // var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        mainScrollView.contentSize = CGSize(width: 750, height: 667)
       
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
        let currentOffset = scrollView.contentOffset.y
        
        let finalOffset = scrollView.contentSize.height - scrollView.frame.width
        
        print("Current Offset \(currentOffset) Final Offset \(finalOffset)")
        
        if currentOffset < -100 && currentOffset > -105 {
            
            sequenceImage.image = UIImage(named: "frame21.jpg")
            
        }
        
        if currentOffset < -95 && currentOffset > -100 {
            
            sequenceImage.image = UIImage(named: "frame20.jpg")
            
        }
        
        if currentOffset < -90 && currentOffset > -95 {
            
            sequenceImage.image = UIImage(named: "frame19.jpg")
            
        }
        
        if currentOffset < -85 && currentOffset > -90 {
            
            sequenceImage.image = UIImage(named: "frame18.jpg")
            
        }
        
        if currentOffset < -80 && currentOffset > -85 {
            
            sequenceImage.image = UIImage(named: "frame17.jpg")
            
        }
        
        if currentOffset < -75 && currentOffset > -80 {
            
            sequenceImage.image = UIImage(named: "frame16.jpg")
            
        }
        
        if currentOffset < -70 && currentOffset > -75 {
            
            sequenceImage.image = UIImage(named: "frame15.jpg")
            
        }
        
        if currentOffset < -65 && currentOffset > -70 {
            
            sequenceImage.image = UIImage(named: "frame14.jpg")
            
        }
        
        if currentOffset < -60 && currentOffset > -65 {
            
            sequenceImage.image = UIImage(named: "frame14.jpg")
            
        }
        
        if currentOffset < -55 && currentOffset > -60 {
            
            sequenceImage.image = UIImage(named: "frame12.jpg")
            
        }
        
        if currentOffset < -50 && currentOffset > -55 {
            
            sequenceImage.image = UIImage(named: "frame11.jpg")
            
        }
        
        if currentOffset < -45 && currentOffset > -50 {
            
            sequenceImage.image = UIImage(named: "frame10.jpg")
            
        }
        
        if currentOffset < -40 && currentOffset > -45 {
            
            sequenceImage.image = UIImage(named: "frame9.jpg")
            
        }
        
        if currentOffset < -35 && currentOffset > -40 {
            
            sequenceImage.image = UIImage(named: "frame8.jpg")
            
        }
        
        if currentOffset < -30 && currentOffset > -35 {
            
            sequenceImage.image = UIImage(named: "frame7.jpg")
            
        }
        
        if currentOffset < -25 && currentOffset > -30 {
            
            sequenceImage.image = UIImage(named: "frame6.jpg")
            
        }
        
        if currentOffset < -20 && currentOffset > -25 {
            
            sequenceImage.image = UIImage(named: "frame5.jpg")
            
        }
        
        
        if currentOffset < -15 && currentOffset > -20 {
            
            sequenceImage.image = UIImage(named: "frame4.jpg")
            
        }
        
        if currentOffset < -10 && currentOffset > -15 {
            
            sequenceImage.image = UIImage(named: "frame3.jpg")
            
        }
        
        if currentOffset < -5 && currentOffset > -10 {
            
            sequenceImage.image = UIImage(named: "frame2.jpg")
            
        }

        
        // I AM ZERO
        
        if currentOffset > -5 && currentOffset < 5 {
            
            sequenceImage.image = UIImage(named: "frame1.jpg")
            
        }
        
        
        
        if currentOffset < 0 {
            let descFade = convertValue(currentOffset, r1Min: 0, r1Max: -10, r2Min: 1, r2Max: 0)
            let descY = convertValue(currentOffset, r1Min: 0, r1Max: -10, r2Min: 470, r2Max: 480)
            descView.alpha = descFade
            descView.frame.origin.y = descY
        }
        
        if currentOffset > 0 {
            let imgFade = convertValue(currentOffset, r1Min: 0, r1Max: 100, r2Min: 1, r2Max: 0)
            sequenceImage.alpha = imgFade
            descView.alpha = imgFade
        }
        
        
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    
    
    func convertValue(value: CGFloat, r1Min: CGFloat, r1Max: CGFloat, r2Min: CGFloat, r2Max: CGFloat) -> CGFloat {
        let ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    

}

