//
//  ViewController.swift
//  WordGuess
//
//  Created by Gouravelly,Sanhith on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var Hintlabel: UILabel!
    
    
    @IBOutlet weak var Enterletter: UITextField!
    
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var Statuslabel: UILabel!
    
    
    @IBOutlet weak var PlayAgain: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
                ["DOG", "Animal"],
                ["CYCLE", "Two wheeler"],
                ["MACBOOK", "Apple device"]]
       
       var count = 0;
       var word = ""
       var lettersGuessed = ""
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           
           CheckButton.isEnabled = false;
           word = words[count][0]
           DisplayLabel.text = ""
           for letter in word{
               DisplayLabel.text! += "- "
           }
           Hintlabel.text = "Hint: "+words[count][1]
           Statuslabel.text = ""
       }
    
    @IBAction func CheckButtonClicked(_ sender: Any) {
   
        var letter = Enterletter.text!
               lettersGuessed = lettersGuessed + letter
                var revealedWord = ""
               for l in word{
                   if lettersGuessed.contains(l){
                       revealedWord += "\(l)"
                   }
                   else{
                       revealedWord += "_ "
                   }
               }
               DisplayLabel.text = revealedWord
               Enterletter.text = ""
               
               if DisplayLabel.text!.contains("_") == false{
                   PlayAgain.isHidden = false;
                   CheckButton.isEnabled = false;
               }
           }
    
    
    @IBAction func PlayAgainButtonClicked(_ sender: Any) {
        
        PlayAgain.isHidden = true
               //clear the label
               lettersGuessed = ""
               count += 1
               if count == words.count{
                   
                   Statuslabel.text = "Congruations! You are done with the game!"
               }
               else{
               word = words[count][0]
               HintLabel.tesxt = "Hint: "
               HintLabel.text! += words[count][1]
               CheckButton.isEnabled = true
               
               DisplayLabel.text = ""
               updateUnderscores()
               }
           }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

