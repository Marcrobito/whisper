//
//  Whisper.swift
//  whisper
//
//  Created by Marco Antonio Martínez Gutiérrez on 23/01/19.
//  Copyright © 2019 Marco Antonio Martínez Gutiérrez. All rights reserved.
//

struct Popular: Codable{
    
    let ad_units:[String]?
    let cards:[String]?
    let engine:String
    let popular:[Whisper]
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
struct Whisper: Codable{
    let geo_title:String
    let in_reply_to:String?
    let me2:Int
    let nickname:String
    let places:[String]?
    let popularity:Double
    let puid:String
    let replies:Int
    let shouts:Int
    let sort:Int
    let text:String
    //let topics
    let ts:Int
    let url:String
    let wid:String
}

