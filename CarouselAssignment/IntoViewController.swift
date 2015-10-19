//
//  IntoViewController.swift
//  CarouselAssignment
//
//  Created by Ajay Gopalkrishna on 10/13/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class IntoViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var IntroscrollView: UIScrollView!
    
    @IBOutlet weak var IntroImageView: UIImageView!
    
    @IBOutlet weak var intro_tile1: UIImageView!
    var initintro_tile1x: CGFloat!
    var initintro_tile1y: CGFloat!
    
    @IBOutlet weak var intro_tile2: UIImageView!
    var initintro_tile2x: CGFloat!
    var initintro_tile2y: CGFloat!
    
    @IBOutlet weak var intro_tile3: UIImageView!
    var initintro_tile3x: CGFloat!
    var initintro_tile3y: CGFloat!
    
    @IBOutlet weak var intro_tile4: UIImageView!
    var initintro_tile4x: CGFloat!
    var initintro_tile4y: CGFloat!
    
    @IBOutlet weak var intro_tile5: UIImageView!
    var initintro_tile5x: CGFloat!
    var initintro_tile5y: CGFloat!
    
    @IBOutlet weak var intro_tile6: UIImageView!
    var initintro_tile6x: CGFloat!
    var initintro_tile6y: CGFloat!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        IntroscrollView.delegate = self
       
       // IntroscrollView.contentSize = CGSize.init(width: 320, height: 1136)
        
         IntroscrollView.contentSize = IntroImageView.image!.size
        initintro_tile1x = intro_tile1.frame.origin.x
        initintro_tile1y = intro_tile1.frame.origin.y
    
        initintro_tile2x = intro_tile2.frame.origin.x
        initintro_tile2y = intro_tile2.frame.origin.y
        
        initintro_tile3x = intro_tile3.frame.origin.x
        initintro_tile3y = intro_tile3.frame.origin.y
    
        initintro_tile4x = intro_tile4.frame.origin.x
        initintro_tile4y = intro_tile4.frame.origin.y
        
        initintro_tile5x = intro_tile5.frame.origin.x
        initintro_tile5y = intro_tile5.frame.origin.y
        
        initintro_tile6x = intro_tile6.frame.origin.x
        initintro_tile6y = intro_tile6.frame.origin.y
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(IntroscrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(IntroscrollView.contentOffset.y / 568))
        
        if page == 1 {
            intro_tile1.frame.origin = CGPoint(x: 43, y: 742)
            
            intro_tile2.frame.origin = CGPoint(x: 198, y: 742)
            intro_tile3.frame.origin = CGPoint(x: 198, y: 803)
            intro_tile4.frame.origin = CGPoint(x: 43, y: 870)
            intro_tile5.frame.origin = CGPoint(x: 120, y: 870)
            intro_tile6.frame.origin = CGPoint(x: 198, y: 870)
            
        
        }
        if page == 0 {
            intro_tile1.frame.origin = CGPoint (x: initintro_tile1x, y: initintro_tile1y)
            intro_tile2.frame.origin = CGPoint (x: initintro_tile2x, y: initintro_tile2y)
            intro_tile3.frame.origin = CGPoint (x: initintro_tile3x, y: initintro_tile3y)
            intro_tile4.frame.origin = CGPoint (x: initintro_tile4x, y: initintro_tile4y)
            intro_tile5.frame.origin = CGPoint (x: initintro_tile5x, y: initintro_tile5y)
            intro_tile6.frame.origin = CGPoint (x: initintro_tile6x, y: initintro_tile6y)
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
