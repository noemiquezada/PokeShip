//
//  Cell.swift
//  Pokeship
//
//  Created by Noemi Quezada on 8/6/16.
//  Copyright © 2016 Neko Labs. All rights reserved.
//

import SpriteKit
import Foundation


class PokeCell: Hashable {
    var position:Position
    var pokemonType:Pokemon
    var sprite:SKSpriteNode?
    var hashValue: Int {
        return position.row*10 + position.column
    }
    
    init(position:Position, pokemonType:Pokemon) {
        self.position = position
        self.pokemonType = pokemonType
    }
}

func ==(lhs: PokeCell, rhs: PokeCell) -> Bool {
    return lhs.position.column == rhs.position.column && lhs.position.row == rhs.position.row
}