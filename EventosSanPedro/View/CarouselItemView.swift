//
//  CarouselView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 09/03/24.
//

import SwiftData
import SwiftUI

struct CarouselItemView: View {
    var occurrence: Occurrence
    
    var body: some View {
        ZStack{
            Color(.black).opacity(0.3)
                .mask(LinearGradient(gradient: Gradient(colors: [.black, .black, .clear, .clear]), startPoint: .bottom, endPoint: .top))
            
            VStack(alignment: .leading) {
                Spacer()
                Text(occurrence.subtitle ?? "")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.bottom, 0.3)
                    .lineLimit(2)
                Text(occurrence.title)
                    .minimumScaleFactor(0.1)
                    .lineLimit(2)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
        }
        .frame(width: 200, height: 300)
        .background(
            AsyncImage(url: occurrence.imageURL, scale: 1) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Image(occurrence.imageFallback ?? "DefaultImg" )
                    .resizable()
                    .scaledToFill()
            }
                .glur(radius: 15.0, offset: 0.54, interpolation: 0.5, direction: .down)
        )
        
        .cornerRadius(20)
        
        
//        VStack(alignment:.leading){
//            Text("Destacadoss")
//                .font(.title2)
//                .bold()
//                .padding(.horizontal, 20)
//            ScrollView(.horizontal) {
//                HStack(spacing:16){
//                    ForEach(occurrences) { item in
//                        NavigationLink(value: item){
//                            CarouselItemView()
//                        }
//                    }
//                }
//                .padding(.leading, 20)
//            }
//            .shadow(radius: 6)
//            .navigationDestination(for: Occurrence.self, destination: { occurrence in
//                EventDetailView(occurrence: occurrence)
//            })
//        }
        
        
        
    }
}

#Preview {
    CarouselView()
         .modelContainer(PreviewContainer)
}
