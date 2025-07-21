//
//  ApiClientProtocol.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 20/07/2025.
//

import Foundation

protocol ApiClientProtocol {
    func sendRequest<T: Codable>(endpoint: EndpointProtocol, request: inout URLRequest, modelDto: T.Type, completion: @escaping (Result<T, AppException>) -> Void)
}
