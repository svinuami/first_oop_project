//
//  Character.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/11/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int
    private var _attackPower : Int
    
    var hp : Int {
        get {
            return _hp
        }
    }
    
    var attackPower : Int {
        get {
            return _attackPower
        }
    }
    
    init (hp : Int, attackPower : Int) {
        self._hp = hp
        self._attackPower = attackPower
    }
    
    var isAlive : Bool {
        return hp > 0
    }
    
    func underAttach(attackPower : Int) -> Bool {
        self._hp -= attackPower
        return true
    }
    
}

