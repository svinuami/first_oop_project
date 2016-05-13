//
//  DevilLord.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/12/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import Foundation

class DevilLord: Enemy {
    
    override var enemyType: String {
        return "DevilLord"
    }
    
    override var loot: [String] {
        return ["Medallaion", "Invisible Cloak", "Give Life Feather"]
    }
    
}