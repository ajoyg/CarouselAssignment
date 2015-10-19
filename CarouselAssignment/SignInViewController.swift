//
//  SignInViewController.swift
//  CarouselAssignment
//
//  Created by Ajay Gopalkrishna on 10/14/15.
//  Copyright © 2015 Ajay Gopalkrishna. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIImageView!
    
    @IBOutlet weak var signButton: UIButton!
    
    @IBOutlet weak var signInUIActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var SignInindicator: UIActivityIndicatorView!
    
    var initialSY: CGFloat!
    var initialSAI: CGFloat!
    
    let offset: CGFloat = -150
    
    let alertEmailController = UIAlertController(title: "Email & Password Required", message: "Please enter your email address and password", preferredStyle: .Alert)
    
    let alertController = UIAlertController(title: "Sign in Failed", message: "Please enter your email address and password", preferredStyle: .Alert)
    
    //let alertSignInController = UIAlertController(title: "Signing In", message: "Please enter your email address and password", preferredStyle: .Alert)
    
    // create a cancel action
    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
        // handle cancel response here. Doing nothing will dismiss the view.
    }
       // create an OK action
    let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
        // handle response here.
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        initialSY = signInButton.frame.origin.y
        initialSAI = SignInindicator.frame.origin.y
        
     
        // add the cancel action to the alertController
        alertEmailController.addAction(cancelAction)
        alertController.addAction(cancelAction)
       
        // add the OK action to the alert controller
       // alertEmailController.addAction(OKAction)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onButton(sender: AnyObject) {
       
        if (UsernameTextField.text!.isEmpty) || (PasswordTextField.text!.isEmpty) {
             presentViewController(alertEmailController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        } else {
                if (UsernameTextField.text! != "ajayg@ymail.com") || (PasswordTextField.text! != "password") {
                    signInUIActivityIndicator.startAnimating()
                    
                    // Delay for 2 seconds, then run the code between the braces
                        delay(2) {
                            self.signInUIActivityIndicator.stopAnimating()
                            print("Here in delay before alert")
                        }
                        presentViewController(alertController, animated: true) {
                            // optional code for what happens after the alert controller has finished presenting
                            }
                    
                    }
            }
        
        
        if (UsernameTextField.text! == "ajayg@ymail.com") || (PasswordTextField.text! == "password") {
                signInUIActivityIndicator.startAnimating()
                delay(2) {
                    print("Here in ready to login delay")
                    self.signInUIActivityIndicator.stopAnimating()
                    self.performSegueWithIdentifier("WelcomeSegue", sender: nil)
                        }
            
                }
    
        
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
          scrollView.contentOffset.y = 75
        self.signInButton.frame.origin = CGPoint(x: self.signInButton.frame.origin.x, y: self.initialSY + self.offset)
        
        self.signButton.frame.origin = CGPoint(x: self.signButton.frame.origin.x, y: self.initialSY + self.offset)
       
        self.SignInindicator.frame.origin = CGPoint(x: self.SignInindicator.frame.origin.x, y: self.initialSAI + self.offset)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        scrollView.contentOffset.y = -5
        self.signInButton.frame.origin = CGPoint(x: self.signInButton.frame.origin.x, y: self.initialSY)
        
        self.signButton.frame.origin = CGPoint(x: self.signButton.frame.origin.x, y: self.initialSY)
        
        self.SignInindicator.frame.origin = CGPoint(x: self.SignInindicator.frame.origin.x, y: self.initialSAI)
        
        print("here after keyboard hide")
        if (UsernameTextField.text! == "ajayg@ymail.com") && (PasswordTextField.text! == "password") {
            signInUIActivityIndicator.startAnimating()
            delay(2){
                self.signInUIActivityIndicator.stopAnimating()
            }
        }
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        
                    view.endEditing(true)

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
