//
//  Enemy.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/12/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import Foundation

class Enemy : Character {
    
    var enemyType : String {
        return "Grunt"
    }
    
    var loot : [String] {
        return ["Iron gun", "Magic Potion"]
    }
    
    func dropLoot() -> String? {
        if(!isAlive) {
            let random = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[random]
        }
        return nil
    }
    
}