//
//  ViewController.swift
//  iOS-cw5-xo+hw
//
//  Created by دیمه سعد الديحاني on 9/27/20.
//  Copyright © 2020 deemah saad aldaihane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var turnLabel: UILabel!
    // X % 2 == 0 -> زوجي
    // O % 2 == 1 -> فردي
    
    var counter = 0
    @IBAction func press(_ sender: UIButton) {
    
        print("تم الضغط عليي!")
        print(counter)
        if counter % 2 == 0{
                sender.setTitle("X", for: .normal)
            sender.setTitleColor(.green, for: .normal)
            turnLabel.text = "O Turn"
            
        }
        else{
            sender.setTitle("O", for: .normal)
             sender.setTitleColor(.red, for: .normal)
             turnLabel.text = "X Turn"
           
        }
        counter += 1
        sender.isEnabled = false
        Winner(Winner: "X")
        Winner(Winner: "O")
    }
    @IBAction func resetTapped() {
        self.restartGame()
    }
    
        
        // X Winning
    func Winner(Winner: String) {
        if (b1.titleLabel?.text == Winner && b2.titleLabel?.text == Winner && b3.titleLabel?.text == Winner) ||
        (b4.titleLabel?.text == Winner && b5.titleLabel?.text == Winner && b6.titleLabel?.text == Winner) ||
            (b7.titleLabel?.text == Winner && b8.titleLabel?.text == Winner && b9.titleLabel?.text == Winner) ||
            (b1.titleLabel?.text == Winner && b4.titleLabel?.text == Winner && b7.titleLabel?.text == Winner) ||
            (b2.titleLabel?.text == Winner && b5.titleLabel?.text == Winner && b8.titleLabel?.text == Winner) ||
            (b3.titleLabel?.text == Winner && b6.titleLabel?.text == Winner && b9.titleLabel?.text == Winner) ||
            (b1.titleLabel?.text == Winner && b5.titleLabel?.text == Winner && b9.titleLabel?.text == Winner) ||
            (b3.titleLabel?.text == Winner && b5.titleLabel?.text == Winner && b7.titleLabel?.text == Winner)
        {
            print("\(Winner) هو الفائز")
            alert(winner: Winner)
        }
    }
       
        
        
       
    
    func alert(winner: String){
    let alertController = UIAlertController(title: "فاز \(winner)", message: "قم بالضغط على الزر التالي كي يتم لإعادة اللعب", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "إعادة اللعب", style: .cancel) { (alert) in
            // restart game
            self.restartGame()
            
        }
           alertController.addAction(restartAction)
        // self.present(alertController, animated: true, completion: nil)
        self.present(alertController, animated: true, completion: nil)
    }
    func restartGame(){
        b1.setTitle("", for: .normal)
        b1.titleLabel?.text = ""
        b1.isEnabled = true
        
        b2.setTitle("", for: .normal)
        b2.titleLabel?.text = ""
        b2.isEnabled = true
        
        b3.setTitle("", for: .normal)
        b3.titleLabel?.text = ""
        b3.isEnabled = true
        
        b4.setTitle("", for: .normal)
        b4.titleLabel?.text = ""
        b4.isEnabled = true
        
        b5.setTitle("", for: .normal)
        b5.titleLabel?.text = ""
        b5.isEnabled = true
        
        b6.setTitle("", for: .normal)
        b6.titleLabel?.text = ""
        b6.isEnabled = true
        
        b7.setTitle("", for: .normal)
        b7.titleLabel?.text = ""
        b7.isEnabled = true
        
        b8.setTitle("", for: .normal)
        b8.titleLabel?.text = ""
        b8.isEnabled = true
        
        b9.setTitle("", for: .normal)
        b9.titleLabel?.text = ""
        b9.isEnabled = true
        
        
        counter = 0
        turnLabel.text = "x Turn"
    }
}

