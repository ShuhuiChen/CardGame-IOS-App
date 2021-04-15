//
//  ViewController.swift
//  cardGame
//
//  Created by shuhui chen on 2021-04-15.
//

import UIKit

class ViewController: UIViewController {
	
	
	
	
	@IBOutlet weak var leftCard: UIImageView!
	
	@IBOutlet weak var rightCard: UIImageView!
	
	
	@IBOutlet weak var leftScoreLbl: UILabel!
	
	@IBOutlet weak var rightScoreLbl: UILabel!
	
	
	var leftScore = 0
	var rightScore = 0
	
	@IBOutlet weak var tieLbl: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		tieLbl.text = ""
	}
	
	
	@IBAction func DealButton(_ sender: Any) {
		tieLbl.text = ""
		//get random numbers
		let leftNum = Int.random(in: 2...14)
		let rightNum = Int.random(in: 2...14)
		
		//randomize the cards
		leftCard.image = UIImage(named: "card"+String(leftNum))
		rightCard.image = UIImage(named: "card"+String(rightNum))
		
		//compare the cards
		if leftNum > rightNum {
			// player wins
			leftScore += 1
			leftScoreLbl.text = String(leftScore)
			
		} else if leftNum < rightNum {
			// CPU wins
			rightScore += 1
			rightScoreLbl.text = String(rightScore)
		} else {
			//tie
			tieLbl.text = "TIE!"
		}
		
	}
	

}

