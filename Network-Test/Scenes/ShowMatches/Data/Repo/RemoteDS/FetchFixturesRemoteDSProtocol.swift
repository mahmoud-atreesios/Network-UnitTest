//
//  FetchFixturesRemoteDSProtocol.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

protocol FetchFixturesRemoteDSProtocol {
    func fetchFixtures(completion: @escaping (Result<FixturesDTO, AppException>) -> Void)
}
