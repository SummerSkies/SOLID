//
//  PetStore.swift
//  SOLID
//
//  Created by Juliana Nielson on 5/12/23.
//

import Foundation

extension PetStore {
    func countTypes(types: [String: Int]) {
        for (type, count) in types {
            print("There are \(count) \(type) up for adoption.")
        }
    }
}

class PetStore {
    var totalPets: Int
    
    init(totalPets: Int) {
        self.totalPets = totalPets
    }
}
