//
//  ViewController.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/11/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerHpLabel: UILabel!
    
    @IBOutlet weak var enemyHpLabel: UILabel!
    
    @IBOutlet weak var chestButton: UIButton!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var displayLbl: UILabel!
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Gandalf", hp: 120, attackPower: 35)
        generateRandomEnemy()
        
        playerHpLabel.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy() {
        let random = arc4random_uniform(2)
        if random == 0 {
            enemy = Kimara(hp: 145, attackPower: 36)
        }else {
            enemy = DevilLord(hp: 177, attackPower: 33)
        }
        enemyImg.hidden = false
        enemyHpLabel.text = "\(enemy.hp) HP"
        displayLbl.text = "Press Attack Button"
        
    }

    @IBAction func chestTapped(sender: AnyObject) {
        chestButton.hidden = true
        displayLbl.text = "\(player.name) WON \(chestMessage)"
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
        
    }
    
    @IBAction func handleAttack(sender: AnyObject) {
        
        if(enemy.underAttach(player.attackPower)) {
            enemyHpLabel.text = "\(enemy.hp) HP"
            displayLbl.text = "\(player.name) attacked \(enemy.enemyType)"
            
        }else {
            displayLbl.text = "Attack Failed"
        }
        
        if let loot = enemy.dropLoot() {
            enemyImg.hidden = true
            enemyHpLabel.text = ""
            chestButton.hidden = false
            chestMessage = loot
            displayLbl.text = "\(player.name) KILLED \(enemy.enemyType)"
        }
    }
    
}

