//
//  NetworkManager.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation

struct NetworkManager {
    static let environment : NetworkEnvironment = .staging
    
    let router = Router<WhisperApi>()
    
}
