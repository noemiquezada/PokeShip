//
//  Level.swift
//  Pokeship
//
//  Created by Noemi Quezada on 8/6/16.
//  Copyright © 2016 Neko Labs. All rights reserved.
//

import Foundation

let NumColumns = 10
let NumRows = 9

class Level {
    private var pokeGrid = Array2D<PokeCell>(columns: NumColumns, rows: NumRows)
    
    func cookieAtColumn(column: Int, row: Int) -> PokeCell? {
        assert(column >= 0 && column < NumColumns)
        assert(row >= 0 && row < NumRows)
        return pokeGrid[column, row]
    }
    
    private func createInitialPokeGrid() -> Set<PokeCell> {
        var set = Set<PokeCell>()
        
        var cellNumberArray:Array<Int> = []
        
        for _ in 0...2 {
            let cellNumber = Int(arc4random_uniform(100))
            cellNumberArray.append(cellNumber)
            
        }
        
        for row in 0..<NumRows {
            for column in 0..<NumColumns {
                
                var pokemonType:Pokemon? = nil
                if (cellNumberArray.contains(row*column + column)) {
                    pokemonType = pokeRandom()
                }
                
                let cell = PokeCell(position: Position(row: row, column: column), pokemonType: pokemonType)
                
                
                set.insert(cell)
            }
        }
        

        
        return set
    }
}