//
//  ViewController.swift
//  SOLID
//
//  Created by Juliana Nielson on 5/12/23.
//

import UIKit

protocol Excited {
    func happyAnimal()
}

class ViewController: UIViewController {
    
    var animalArk = PetStore(totalPets: 0)
    var petTypes = ["": 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchLocalData()
        fetchNetworkData()
    }

    func printPetCount(petCategory: PetStore, petTypes: [String: Int]) {
        let petCount = petCategory.totalPets
        print("There are \(petCount) total pets avaliable for adoption.")
        petCategory.countTypes(types: petTypes)
    }
    
    func fetchLocalData() {
        let localDataFetcher = LocalDataFetcher()
        let dataProvider2 = DataProvider(dataFetcher: localDataFetcher)
        print(dataProvider2.provideData()) // "Data fetched from local storage"
        petTypes = ["American Goldens": 7, "British Goldens": 3, "Canadian Goldens": 2]
    }
    
    func fetchNetworkData() {
        let networkDataFetcher = NetworkDataFetcher()
        let dataProvider = DataProvider(dataFetcher: networkDataFetcher)
        print(dataProvider.provideData()) // "Data fetched from network"
        animalArk.totalPets = 27
    }

    @IBAction func buttonPressed(_ sender: Any) {
        printPetCount(petCategory: animalArk, petTypes: petTypes)
    }
}

