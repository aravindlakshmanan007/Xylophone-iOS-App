//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func notePressed(_ sender: UIButton) {
        if sender.tag==1{
            play(note: "note1")
        }else if sender.tag==2{
            play(note: "note2")
        }else if sender.tag==3{
            play(note: "note3")
        }else if sender.tag==4{
            play(note: "note4")
        }else if sender.tag==5{
            play(note: "note5")
        }else if sender.tag==6{
            play(note: "note6")
        }else{
            play(note: "note7")
        }
    }
func play(note:String){
        if let soundURL = Bundle.main.url(forResource:note,withExtension:"wav"){
            var mySound:SystemSoundID=0
            AudioServicesCreateSystemSoundID(soundURL as CFURL,&mySound)
            AudioServicesPlaySystemSound(mySound);
        }
    }
}

