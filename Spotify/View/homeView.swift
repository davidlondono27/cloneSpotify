//
//  homeView.swift
//  Spotify
//
//  Created by David Londoño on 30/06/22.
//

import SwiftUI

struct homeView: View {
    @State var hiddenTitles = true
    @Environment(\.colorScheme) var scheme
    var viewModel : ViewModel = ViewModel()
    @ObservedObject var allPodcast = ViewModel()
    
    var body: some View {
        NavigationView(){
            VStack(){
                ScrollView(.horizontal,showsIndicators: false){
                    VStack(spacing: 10){
                        Text(Constants.RecommendationOne)
                            .font(Font.custom(ConstantsFonts.GothamBold, size: 16))
                            .padding(.leading, 20)
                        ForEach(allPodcast.firstList){podcast in
                            if (podcast.body[0].priority.position == 1){
                                PodcastCardView(list: podcast)
                            }
                        }
                    }.padding(.bottom)
                }
                Spacer()
                ScrollView(.horizontal,showsIndicators: false){
                    VStack(spacing: 10){
                        Text(Constants.RecommendationTwo)
                            .font(Font.custom(ConstantsFonts.GothamBold, size: 16))
                            .padding(.leading, 20)
                        ForEach(allPodcast.firstList){podcast in
                            if (podcast.body[0].priority.position == 2){
                                PodcastCardView(list: podcast)
                            }
                        }
                    }.padding(.bottom)
                }
                Spacer()
            }
        }.navigationBarBackButtonHidden(hiddenTitles)
            .navigationBarHidden(hiddenTitles)
            .preferredColorScheme(.dark)
            .onAppear{
                viewModel.loadData()
            }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
