//
//  Player.swift
//  game_oop
//
//  Created by Vinodh Srinivasan on 5/11/16.
//  Copyright © 2016 creaTech. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name : String {
        get {
            return _name
        }
    }
    
    var inventory : [String] {
        get {
            return _inventory
        }
    }
    
    func addInventory(inventory : String) {
        _inventory.append(inventory)
    }
    
    convenience init(name: String, hp : Int, attackPower : Int) {
        self.init(hp : hp, attackPower : attackPower)
        self._name = name
    }    
    
}