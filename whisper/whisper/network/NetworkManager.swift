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
    
    func getPopularWhispers(limit:Int, completion: @escaping (_ popular: Popular?,_ error: String?)->()){
        router.request(.popular(limit: limit)) { data, response, error in
            let jsonDecoder = JSONDecoder()
            do{
                let jsonData = try JSONSerialization.data(withJSONObject: data!)
                let responseData = try jsonDecoder.decode( Popular.self, from: jsonData)
                
                completion(responseData,  error as! String?)
                
            }catch {
                print("Error deserializing JSON: \(error)")
                completion(nil, "Error deserializing JSON \(error)")
            }
            
        }
    }
    
}
