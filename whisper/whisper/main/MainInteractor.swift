//
//  MainInteractor.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation

class MainInteractor:MainPresenterToInteractorProtocol{
    var presenter: MainInteractorToPresenterProtocol?
    
    let networker = NetworkManager()
    
    func fetchPopular() {
        networker.getPopularWhispers(limit: 50) { result, error in
            if error != nil{
                
            }else{
                self.presenter?.popularFetched(whispers: result?.popular ?? [])
            }
        }
    }
    
}
