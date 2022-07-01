//
//  conectionAPI.swift
//  Spotify
//
//  Created by David Londoño on 27/06/22.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var firstList = [ResponseBody]()
    init(){
        loadData()
    }
    
    func loadData(){
        let urlSession = URLSession.shared
        let url = URL(string: "https://api.audioboom.com/channels/recommended")
        urlSession.dataTask(with: url!){ data, response, error in
            if let _ = error {
                print("Hay un error en el GET de URL Session")
            }

            if let data = data,
                let httpReponse = response as? HTTPURLResponse,
                httpReponse.statusCode == 200 {
                let podcastDataModel = try? JSONSerialization.jsonObject(with: data)
                print("Podcast: \(String(describing: podcastDataModel!))")
                //self.firstList = podcastDataModel as! [ResponseBody]            
            }
        }.resume()
    }
}

//class PlayListViewModel: ObservableObject {
//    var id : Int
//    @Published var playList = [playList]()
//
//    init(){
//        loadPlayList(index: id)
//    }
//    
//    func loadPlayList(index: Int) {
//        let urlSession = URLSession.shared
//        let url = URL(string: "https://api.audioboom.com/channels/\(index)")
//        urlSession.dataTask(with: url!){ data, response, error in
//            if let _ = error {
//                print("Hay un error en el GET de URL Session en la PlayList")
//            }
//
//            if let data = data,
//                let httpReponse = response as? HTTPURLResponse,
//                httpReponse.statusCode == 200 {
//                let podcastDataModel = try? JSONSerialization.jsonObject(with: data)
//                print("PlayList: \(String(describing: podcastDataModel!))")
//                //self.firstList = podcastDataModel as! [ResponseBody]
//            }
//        }.resume()
//    }
//}
