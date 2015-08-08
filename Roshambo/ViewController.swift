//
//  ViewController.swift
//  Roshambo
//
//  Created by Jörg Klausewitz on 08.08.15.
//  Copyright (c) 2015 Stunlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var rockBtn: UIButton!
    @IBOutlet weak var paperBtn: UIButton!
    @IBOutlet weak var scissorsBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        
        if  segue.identifier == "result" {
        
        let resultViewController = segue.destinationViewController as! ResultViewController
            
            
            if sender?.tag == 0 {
                resultViewController.choice = "Paper"
                
            } else {
                resultViewController.choice = "Scissors"
            }
            
        }
        
        
        
    }


    
    @IBAction func makeChoice(sender: UIButton) {
        
        
        if sender == rockBtn {
        
            var resultViewController: ResultViewController
        
            resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("resultVC") as! ResultViewController
        
            resultViewController.choice = "Rock"
            
            self.presentViewController(resultViewController, animated: true, completion: nil)
            
        } else if sender == paperBtn {
        
            self.performSegueWithIdentifier("result", sender: self)
            
        
        }
        
    }
    
    
    
    

}

