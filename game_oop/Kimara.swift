//
//  Kimara.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/12/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import Foundation

class Kimara: Enemy {

    let IMMUNE_MAX = 15
    
    override var enemyType: String {
        return "Kimara"
    }
    
    override var loot: [String] {
        return ["Spell Wand", "Touch Finger", "Sword of Life"]
    }
    
    override func underAttach(attackPower: Int) -> Bool {
        if attackPower > IMMUNE_MAX {
            return super.underAttach(attackPower)
        }else {
            return false
        }
    }
        
}