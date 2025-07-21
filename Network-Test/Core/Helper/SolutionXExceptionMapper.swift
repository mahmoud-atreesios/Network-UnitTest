//
//  SolutionXExceptionMapper.swift
//  SolutionX
//
//  Created by Mahmoud Mohamed Atrees on 01/02/2025.
//

import Foundation

struct SolutionXExceptionMapper {
    func map(error: Error) -> AppException {
        if let solutionXError = error as? AppException {
            return solutionXError
        }
        
        if let urlError = error as? URLError {
            return mapURLError(urlError)
        }
        
        return .networkError(.unknownStatusCodeError)
    }
}

//MARK: - url errors
extension SolutionXExceptionMapper {
    private func mapURLError(_ error: URLError) -> AppException {
        switch error.code {
        case .notConnectedToInternet:
            return .networkError(.notConnectedToInternet)
        case .timedOut:
            return .networkError(.serviceUnavailable)
        case .cannotFindHost:
            return .networkError(.cannotFindHost)
        case .cannotConnectToHost:
            return .networkError(.cannotConnectToHost)
        case .badServerResponse:
            return .networkError(.invalidResponse)
        default:
            return .networkError(.unknownStatusCodeError)
        }
    }
}
