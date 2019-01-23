//
//  EndpointType.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

import Foundation
import Alamofire

public typealias HTTPHeaders = [String:String]

protocol EndPointType {
    var baseURL:String {get}
    var path:String{get}
    var method:HTTPMethod{get}
    var fileDestination:String?{get}
    var headers: HTTPHeaders? { get }
    var params: [String:Any]? {get}
}
