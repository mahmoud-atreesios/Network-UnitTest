//
//  FetchFixturesRemoteDS.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

class FetchFixturesRemoteDS: FetchFixturesRemoteDSProtocol {
    private var networkProvider: NetworkProviderProtocol
    
    init(networkProvider: NetworkProviderProtocol) {
        self.networkProvider = networkProvider
    }
    
    func fetchFixtures(completion: @escaping (Result<FixturesDTO, AppException>) -> Void) {
        networkProvider.get(apiEndpoint: FetchFixturesRequest(), modelDto: FixturesDTO.self, completion: completion)
    }
    
}
