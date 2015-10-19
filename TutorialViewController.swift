//
//  TutorialViewController.swift
//  CarouselAssignment
//
//  Created by Ajay Gopalkrishna on 10/16/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var TutorialscrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TutorialscrollView.contentSize = CGSize.init(width: 1280, height: 522)
        TutorialscrollView.delegate = self
        pageControl.numberOfPages=4
        pageControl.currentPage=0
        TutorialscrollView.showsHorizontalScrollIndicator = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(TutorialscrollView.contentOffset.x / 320))
        
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        if page == 3 {
                pageControl.hidden = true
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
