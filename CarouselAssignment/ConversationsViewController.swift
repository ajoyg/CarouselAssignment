//
//  ConversationsViewController.swift
//  CarouselAssignment
//
//  Created by Ajay Gopalkrishna on 10/17/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func onbackButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
        
        
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
