//
//  PodcastCard.swift
//  Spotify
//
//  Created by David Londoño on 26/06/22.
//

import SwiftUI

struct PodcastCardView: View {
    var list: ResponseBody
    
    var body: some View {
        NavigationLink(destination: ListView()){
            VStack(alignment: .leading, spacing: 0.3){
                ZStack {
                    AsyncImage(
                        url: URL(string: list.body[0].urls.logo.original),
                        content: { image in
                            image.resizable()
                                .cornerRadius(15)
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 160, maxHeight: 160)
                        },
                        placeholder: {
                            ProgressView()
                                .frame(maxWidth: 160, maxHeight: 160)
                        }
                    )
                    VStack {
                        Spacer()
                        Text(list.body[0].title)
                            .foregroundColor(Color.black)
                            .font(Font.custom(ConstantsFonts.GothamBold, size: 16))
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .bottom], 8.0)
                            .lineLimit(2)
                            .shadow(color: .white, radius: 1)
                    }.frame(width: 150, height: 150, alignment: .leading)
                }
                HStack {
                    Text(list.body[0].description)
                        .foregroundColor(Color.white)
                        .font(Font.custom(ConstantsFonts.GothamLight, size: 10))
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, alignment: .leading)
                        .padding(.vertical, 5.0)
                        .lineLimit(2)
                }.frame(width: 150, alignment: .leading)
            }.preferredColorScheme(.dark)
        }
    }
}

//struct PodcastCard_Previews: PreviewProvider {
//    static var previews: some View {
//        PodcastCardView()
//    }
//}
