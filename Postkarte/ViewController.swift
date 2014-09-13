//
//  ViewController.swift
//  Postkarte
//
//  Created by Dagmar und Peter on 11.09.14.
//  Copyright (c) 2014 PB King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Code will evaluate when we press the button
        // Das messageLabel hat die Eigenschaft "hidden", diese wird auf "false" gesetzt und damit ausgeschaltete. Das Label kann erscheinen.
        
        messageLabel.hidden = false
        
        //Dem messageLabel wird der Text zugewiesen, der im enterAMessageTextField eingetragen wurde. Das Attribut "text" der Variable, d.h. der Text wird zum Text im Label.
        
        messageLabel.text = enterAMessageTextField.text
        
        //Das Textfeld enterAMessageTextField wird auf geleert durch ""
        
        enterAMessageTextField.text = ""
        
        //Durch den Befehl resignFirstResponder() verschwindet das Keyboard
        
        enterAMessageTextField.resignFirstResponder()
        
        //Die Farme des Labeltextes steht in .textColor, ist vom Typ UIColor und wird mit .blueColor() auf blau gesetzt
        
        messageLabel.textColor = UIColor.blueColor()
        
        //Damit das Aussehen oder der Text eines Buttons geändert werden kann, muss er erst aus dem  Storyboard mit dem ViewController verbunden werden. Jedoch nicht als Action sondern als @IBOutlet. Der Buttontitel sitzt im .setTitel-Attribut. Dieses enthält zwei Argumente.
        
        sendMailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }

}

