//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player : AVAudioPlayer?
    
    let mavArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func zzh(temp : String){
        //print(sender.tag)
        
        let url = Bundle.main.url(forResource: temp, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        }catch let error as NSError {
            print(error)
            
        }
    }

    @IBAction func notePressed(_ sender: UIButton) {
//        print(sender.tag - 1)
        zzh(temp: mavArray[sender.tag - 1])
    }
    
  

}

