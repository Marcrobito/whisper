//
//  MainPresenter.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation
class MainPresenter:MainViewToPresenterProtocol{
    
    
    var view: MainPresenterToViewProtocol?
    
    var interector: MainPresenterToInteractorProtocol?
    
    var router: MainPresenterToRouterProtocol?
    
    func requestPopular() {
        interector?.fetchPopular()
    }
    
    
}


extension MainPresenter:MainInteractorToPresenterProtocol{
    func popularFetched(whispers: [Whisper]) {
        view?.updateView(whispers: whispers)
    }
}
