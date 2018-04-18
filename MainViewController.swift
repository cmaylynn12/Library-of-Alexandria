//
//  MainViewController.swift
//  Library of Alexandria
//
//  Created by Kimberley Nikolaevna on 12/3/18.
//  Copyright © 2018 Kimberley Chan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cancelBookAdd" {
            let cancelConfirmation = UIAlertController(title: "Unsaved Changes", message: "Are you sure you want to cancel without saving?", preferredStyle: UIAlertControllerStyle.alert)
            
            cancelConfirmation.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
    })
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
