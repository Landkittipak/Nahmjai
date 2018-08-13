//
//  FirstViewController.swift
//  Nahmjai 3
//
//  Created by Kittipak Tantichot on 18/7/2561 BE.
//  Copyright © 2561 Groton MIT Launch. All rights reserved.
//

import UIKit
import GoogleSignIn
import BWWalkthrough

class FirstViewController: UIViewController, GIDSignInUIDelegate, BWWalkthroughViewControllerDelegate {
    @IBOutlet weak var signinButton: GIDSignInButton!
    var walkthrough : BWWalkthroughViewController!
    
    func walkthroughNextButtonPressed() {
        
    }
    
    
    func launchWalkthrough(){
        let stb = UIStoryboard(name: "Main", bundle: nil)
        self.walkthrough = stb.instantiateViewController(withIdentifier: "container") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewController(withIdentifier: "page1")
        let page_two = stb.instantiateViewController(withIdentifier: "page2")
        let page_three = stb.instantiateViewController(withIdentifier: "page3")
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.add(viewController: page_one)
        walkthrough.add(viewController: page_two)
        walkthrough.add(viewController: page_three)
        
        // launch the walkthrough
        self.present(walkthrough, animated:true, completion:nil)
        
    }
    
    
    @IBAction func walkthroughButtonPressed(_ sender: UIButton) {
        launchWalkthrough()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        
        
    }
      

}
 
