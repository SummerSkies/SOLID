//
//  Dogs.swift
//  SOLID
//
//  Created by Juliana Nielson on 5/12/23.
//

import Foundation

class Dogs: PetStore, Excited {
    func happyAnimal() {
        print("Wag wag :)")
    }
    
    let goldenRetrievers: Int
    
    init(goldenRetrievers: Int, totalPets: Int) {
        self.goldenRetrievers = goldenRetrievers
        super.init(totalPets: totalPets)
    }
}
