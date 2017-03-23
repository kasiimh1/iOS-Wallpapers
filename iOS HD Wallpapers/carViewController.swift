//
//  carViewController.swift
//  iOS HD Wallpapers
//
//  Created by Kasim Hussain on 22/02/2017.
//  Copyright © 2017 Kasim Hussain. All rights reserved.
//
import UIKit
class carViewController: UIViewController{
    //variables
    var wallpaper = 0
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backgroundView: UIImageView!
    @IBAction func ButtonWasTapped(_ sender: UIButton) {
        newWallpaper()
    }
    //list of Images in array
    let image : NSArray = [ UIImage(named: "0.jpg")!,
                            UIImage(named: "1.jpg")!,
                            UIImage(named: "2.jpg")!,
                            UIImage(named: "3.jpg")!,
                            UIImage(named: "4.jpg")!,
                            UIImage(named: "5.jpg")!,
                            UIImage(named: "6.jpg")!,
                            UIImage(named: "7.jpg")!]
    //func for question
    func newWallpaper(){
        let imagerange: UInt32 = UInt32(wallpaper)
        let randomimage = imagerange
        let generatedimage: AnyObject = image.object(at: Int(randomimage)) as AnyObject
        self.imageView.image = generatedimage as? UIImage
        self.backgroundView.image = generatedimage as? UIImage
        print ("Image: \(randomimage)")
        wallpaper += 1
        print ("Image: +1'd =\(wallpaper)")
        if wallpaper == 8 {
            // create alert
            let alert = UIAlertController(title: "All Wallpapers Displayed", message: ("Hit Menu To Go To The Main Menu"), preferredStyle: UIAlertControllerStyle.alert)
            // add action button
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            // show alert
            self.present(alert, animated: true, completion: nil)
            //print in debugger to check it works
            print ("Creating Alert")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
