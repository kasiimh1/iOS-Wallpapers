//
//  ViewController.swift
//  iOS HD Wallpapers
//
//  Created by Kasim Hussain on 22/02/2017.
//  Copyright © 2017 Kasim Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func cars(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "cars", sender: nil)
}
    @IBAction func girls(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "girls", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

