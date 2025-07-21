//
//  ViewModel.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

class FixturesViewModel {
    private var fetchFixturesUsecase: FetchFixturesUsecaseProtocol
    
    init(fetchFixturesUsecase: FetchFixturesUsecaseProtocol) {
        self.fetchFixturesUsecase = fetchFixturesUsecase
    }
    
    func fetchFixtures() {
        fetchFixturesUsecase.fetchFixtures { result in
            switch result {
            case .success(let fixtures):
                print("I have got the fixtures successfully \(fixtures)")
            case .failure(let error):
                print("OOOOOPS an error occures \(error)")
            }
        }
    }
    
}
