//
//  NetworkProviderProtocol.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 20/07/2025.
//

import Foundation

protocol NetworkProviderProtocol {
    func get<T: Codable>(apiEndpoint: EndpointProtocol, modelDto: T.Type, completion: @escaping (Result<T, AppException>) -> Void)
    func post<T: Codable>(apiEndpoint: EndpointProtocol, modelDto: T.Type, completion: @escaping (Result<T, AppException>) -> Void)
    func put<T: Codable>(apiEndpoint: EndpointProtocol, modelDto: T.Type, completion: @escaping (Result<T, AppException>) -> Void)
    func delete<T: Codable>(apiEndpoint: EndpointProtocol, modelDto: T.Type, completion: @escaping (Result<T, AppException>) -> Void)
}
