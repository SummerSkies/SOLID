//
//  Database.swift
//  SOLID
//
//  Created by Juliana Nielson on 5/12/23.
//

import Foundation

protocol DataFetcher {
    func fetchData() -> String
  }

class DataProvider {
  private let dataFetcher: DataFetcher
  init(dataFetcher: DataFetcher) {
    self.dataFetcher = dataFetcher
  }
    
  func provideData() -> String {
    return dataFetcher.fetchData()
  }
}
