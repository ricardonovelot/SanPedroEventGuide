//
//  CarouselItemView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import SwiftData
import SwiftUI
import CoreLocation
import Glur

struct CarouselView: View {
    @Environment(\.modelContext) var modelContext
    @Query var occurrences: [Occurrence]

    var body: some View {
        
        VStack(alignment: .leading){
            Text("Destacados")
                .font(.title)
                .bold()
                .padding(.leading, 16)
            
            ScrollView(.horizontal){
                HStack(spacing:16){
                    ForEach(occurrences) { item in
                        CarouselItemView(occurrence: item)
                    }
                }
            }
            .contentMargins(.leading,16)
        }
        
    }
}

#Preview {
        CarouselView()
             .modelContainer(PreviewContainer)
}
