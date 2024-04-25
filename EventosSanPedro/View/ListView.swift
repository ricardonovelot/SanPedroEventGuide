//
//  ListView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 03/04/24.
//

import SwiftData
import SwiftUI

struct ListItemView: View {
    var occurrence: Occurrence
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                AsyncImage(url: occurrence.imageURL, scale: 1) { image in
                    image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(12)
                    .shadow(radius: 6)
                    
                } placeholder: {
                    Image(occurrence.imageFallback ?? "DefaultImg" )
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(8)
                    .shadow(radius: 6)
                }
                VStack(alignment: .leading){
                    Text(occurrence.title)
                        .minimumScaleFactor(0.1)
                        .lineLimit(2)
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.bottom,8)
                    Text(occurrence.subtitle ?? "")
                        .foregroundStyle(.secondary)
                        .font(.caption)
                        .lineLimit(2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 8)
            }
            .frame(width: .infinity)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ListView()
        .modelContainer(PreviewContainer)
}
