//
//  WhisperApi.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation
import Alamofire

public enum WhisperApi{
    case popular(limit:Int)
}

enum NetworkEnvironment {
    case qa
    case production
    case staging
}

extension WhisperApi:EndPointType{
    var environmentBaseURL : String {
        switch NetworkManager.environment {
        case .production: return "http://prod.whisper.sh/"
        case .qa: return "http://prod.whisper.sh/"
        case .staging: return "http://prod.whisper.sh/"
        }
    }
    
    var baseURL: String {
        guard URL(string: environmentBaseURL) != nil else { fatalError("baseURL could not be configured.")}
        return environmentBaseURL
    }
    
    var path: String {
        switch self {
        case .popular(let limit):
            return "whispers/popular?limit=\(limit)"
        }
        
    }
    
    var fileDestination: String? {
        
        return ""
    }
    
    var method: HTTPMethod {
        switch self {
            case .popular:
                return .get
            default:
                return .get
        }
        
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
    
    var params: [String : Any]? {
        return nil
    }
}
