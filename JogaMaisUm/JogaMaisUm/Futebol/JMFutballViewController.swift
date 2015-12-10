//
//  JMFutballViewController.swift
//  JogaMaisUm
//
//  Created by Arthur Henrique Vieira de Oliveira on 12/9/15.
//  Copyright © 2015 Levare. All rights reserved.
//

import UIKit

class JMFutballViewController: UIViewController {

    @IBOutlet var playImage: UIImageView!
    @IBOutlet var levelImage: UIImageView!
    @IBOutlet var howToPlayImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func playClicked() {
        UIView.animateWithDuration(1.0, animations: {
            
            self.howToPlayImage.alpha = 0.0;
            
            }, completion: { finished in
                
                UIView.animateWithDuration(1.0, animations: {
                    
                    self.levelImage.alpha = 0.0;
                })
        })
    }
    
    @IBAction func backClicked() {
        self.navigationController?.popToRootViewControllerAnimated(true
        )
    }
    
    @IBAction func helpClicked() {
        UIView.animateWithDuration(1.0, animations: {
            
            self.howToPlayImage.alpha = 1.0;
        })
    }

}
