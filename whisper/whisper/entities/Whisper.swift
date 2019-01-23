//
//  Whisper.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

struct Popular: Codable{
    
    let ad_units:[Any]
    let cards:[Any]
    let engine:String
    let popular:[Any]
    let scroll_id:String
    
    private enum CodingKeys: String, CodingKey {
        case ad_units
        case cards
        case engine
        case popular
        case scroll_id
    }
    
}


/*
 "ad_units": [],
 "cards": [],
 "engine": "w_language_popular_engine",
 "popular": [],
 "scroll_id":
 */
