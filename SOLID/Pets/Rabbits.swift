//
//  Rabbit.swift
//  SOLID
//
//  Created by Juliana Nielson on 5/12/23.
//

import Foundation

class Rabbits: PetStore, Excited {
    func happyAnimal() {
        print("Hop hop hop!")
    }
    let hollandLops: Int
    
    init(hollandLops: Int, totalPets: Int) {
        self.hollandLops = hollandLops
        super.init(totalPets: totalPets)
    }
}
