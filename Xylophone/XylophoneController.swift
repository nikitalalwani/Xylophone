//
//  XylophoneController.swift
//  Xylophone
//
//  Created by nikita lalwani on 8/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
import AVKit
class XylophoneController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    

    @IBAction func keyPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            self.playSound(file: "C")
        break
        case 2:
            self.playSound(file: "D")
        break
        case 3:
            self.playSound(file: "E")
        break
        case 4:
            self.playSound(file: "F")
        break
        case 5:
            self.playSound(file: "G")
        break
        case 6:
            self.playSound(file: "A")
        break
        case 7:
             self.playSound(file: "B")
        break
        default:
            break
        }
        
    }
    

    func playSound(file: String) {
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: "wav")!)

           do{
               audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)

           }catch {
               print("there was some error. The error was \(error)")
           }
           audioPlayer.play()
    }
}
