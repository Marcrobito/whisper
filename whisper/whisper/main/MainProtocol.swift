//
//  MainProtocol.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation
import UIKit

protocol MainPresenterToViewProtocol: class {
    var presenter: MainViewToPresenterProtocol? {get set}
}

protocol MainInteractorToPresenterProtocol: class  {
    
}

protocol MainPresenterToInteractorProtocol: class {
    var presenter:MainInteractorToPresenterProtocol? {get set}
}

protocol MainViewToPresenterProtocol: class {
    var view:MainPresenterToViewProtocol? {get set}
    var interector:MainPresenterToInteractorProtocol? {get set}
    var router:MainPresenterToRouterProtocol? {get set}
}

protocol  MainPresenterToRouterProtocol: class {
    static func createModule() -> UIViewController
}
