//
//  FetchFixturesUsecaseProtocol.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 21/07/2025.
//

import Foundation

protocol FetchFixturesUsecaseProtocol {
    func fetchFixtures(completion: @escaping (Result<Fixtures, AppException>) -> Void)
}
