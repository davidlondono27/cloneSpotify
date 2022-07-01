//
//  podcastModel.swift
//  Spotify
//
//  Created by David Londoño on 27/06/22.
//

import Foundation

//MARK: Body for main response
struct ResponseBody: Decodable, Identifiable {
    var id = UUID().uuidString
    let api_warning: String
    let body: [response]
}

struct response: Decodable {
    let id: Int
    let title: String
    let description: String
    let urls : urlImages
    let priority: priorityRange
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case urls
        case priority = "recommendation"
    }
}

struct urlImages: Decodable {
    let logo: originalImage
    
    enum CodingKeys: String, CodingKey {
        case logo = "logo_image"
    }
}

struct originalImage: Decodable {
    let original: String
    
    enum CodingKeys: String, CodingKey {
        case original
    }
}

struct priorityRange: Decodable {
    let position: Int
}




//MARK: PodCast PlayList Model
struct playList: Decodable {
    var id : Int
    var title : String
    var description : String
    var audioClips : [audioClip]
    var imageList : urlImages

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case audioClips
        case imageList = "original"
    }
}

//MARK: Audio clip Model
struct audioClip: Decodable {
    var id : Int
    var title : String
    var description : String
    var links : [urlsClips]

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case links
    }
}

struct urlsClips : Decodable {
    var audio : String
    var image : String

    enum CodingKeys: String, CodingKey {
        case audio = "high_mp3"
        case image
    }
}
