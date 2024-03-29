//
//  CustomError+Ext.swift
//  Core
//
//  Created by admin on 26/09/23.
//

import Foundation

public enum URLError: LocalizedError {

    case invalidRequest
    case invalidResponse
    case addressUnreachable(URL)
  
    public var errorDescription: String? {
        switch self {
            case .invalidRequest: return "Request is null."
            case .invalidResponse: return "The server responded with garbage."
            case .addressUnreachable(let url): return "\(url.absoluteString) is unreachable."
        }
    }

}

public enum DatabaseError: LocalizedError {

    case invalidInstance
    case requestFailed
    case alreadyDeleted
  
    public var errorDescription: String? {
        switch self {
            case .invalidInstance: return "Database can't instance."
            case .requestFailed: return "Your request failed."
            case .alreadyDeleted: return "Data already deleted"
        }
    }
}
