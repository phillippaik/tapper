//
//  ViewController.swift
//  tapper
//
//  Created by Phillip Paik on 3/12/16.
//  Copyright © 2016 Phillip Paik. All rights reserved.
//sadad

import UIKit

class ViewController: UIViewController {
    // Properties
    var maxTaps = 0;
    var currentTaps = 0;
    


    // Outlets
    @IBOutlet weak var overlayView: UIView!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!

    
    @IBAction func onPlayButtonPressed(sender: AnyObject) {

        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            maxTaps = Int(howManyTapsText.text!)!;
            currentTaps = 0;
            
            logoImg.hidden = true
            playButton.hidden = true
            howManyTapsText.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            overlayView.hidden = false
            
            updateTaps()
        }
        
    }
    
    @IBAction func coinPressed(sender: AnyObject) {
        currentTaps++
        updateTaps()
        if isGameOver() {
            gameOver()
        }
        
        
    }
    
    func gameOver(){
        maxTaps = 0;
        currentTaps = 0;
        howManyTapsText.text = ""
        
        logoImg.hidden = false
        playButton.hidden = false
        howManyTapsText.hidden = false
        tapsLabel.hidden = true
        tapButton.hidden = true
        overlayView.hidden = true
    }
    
    func updateTaps() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
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

