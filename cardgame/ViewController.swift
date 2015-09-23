//
//  ViewController.swift
//  cardgame
//
//  Created by Alexey Valov on 18/09/15.
//  Copyright (c) 2015 Alexey Valov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardView: UIImageView!
    @IBOutlet weak var secondCardView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backgroundView: UIImageView!
    
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var opponentScore: UILabel!
    
    var playerScoreTotal = 0
    var opponentScoreTotal = 0
    var cardArray: [String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playRoundTapped(sender: UIButton) {
        
        let firstRand:Int = Int(arc4random_uniform(13))
        let firstCardName:String = self.cardArray[firstRand]
        
        let secondRand:Int = Int(arc4random_uniform(13))
        let secondCardName:String = self.cardArray[secondRand]
        
        self.firstCardView.image = UIImage(named: firstCardName)
        self.secondCardView.image = UIImage (named: secondCardName)
        
        
        if firstRand > secondRand {
            playerScoreTotal += 1
            self.playerScore.text = String (playerScoreTotal)
        }
        else if firstRand == secondRand {
            
        }
        else {
            opponentScoreTotal += 1
            self.opponentScore.text = String (opponentScoreTotal)
        }
    }

}

