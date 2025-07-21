//
//  FixturesRepo.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

class FixturesRepo: FixturesRepoProtocol {
    private var remoteDS: FetchFixturesRemoteDSProtocol
    private let mapper: FixturesMapper
    
    init(remoteDS: FetchFixturesRemoteDSProtocol, mapper: FixturesMapper) {
        self.remoteDS = remoteDS
        self.mapper = mapper
    }
    
    func fetchFixtures(completion: @escaping (Result<Fixtures, AppException>) -> Void) {
        remoteDS.fetchFixtures { result in
            switch result {
                case .success(let fixturesDTO):
                let fixtures = self.mapper.FixturesDtoToDomain(fixturesDTO)
                completion(.success(fixtures))
            case .failure(let appException):
                completion(.failure(appException))
            }
        }
    }
}
