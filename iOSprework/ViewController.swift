//
//  ViewController.swift
//  iOSprework
//
//  Created by Dafne Gonzalez on 7/7/23.
// iOS101 CodePath 2023 Pre-work 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        smileImage.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var smileImage: UIImageView!
    @IBAction func resetBackgroundcolor(_ sender: UIButton) {
        let reset = UIColor(white: 1.0, alpha: 1.0)
        smileImage.isHidden = false
        view.backgroundColor = reset
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        smileImage.isHidden = true
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red:red, green: green, blue: blue, alpha: 0.5)
        
    }
}

