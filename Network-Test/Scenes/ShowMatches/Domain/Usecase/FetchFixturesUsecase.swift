//
//  FetchFixturesUsecase.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

class FetchFixturesUsecase: FetchFixturesUsecaseProtocol{
    private var fixturesRepo: FixturesRepoProtocol
    
    init(fixturesRepo: FixturesRepoProtocol) {
        self.fixturesRepo = fixturesRepo
    }
    
    func fetchFixtures(completion: @escaping (Result<Fixtures, AppException>) -> Void) {
        fixturesRepo.fetchFixtures(completion: completion)
    }
    
}
