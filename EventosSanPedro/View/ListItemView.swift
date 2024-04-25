//
//  ListItemView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 02/04/24.
//

import SwiftData
import SwiftUI
import CoreLocation
import Glur

struct ListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var occurrences: [Occurrence]

    var body: some View {
        
        VStack(alignment: .leading){
            Text("Actividad Física")
                .font(.title)
                .bold()
                .padding(.leading, 16)
                .foregroundStyle(.purple)
            
            ForEach(occurrences) { occurrence in
                ListItemView(occurrence: occurrence)
            }
        }
    }
}

#Preview {
    ListView()
         .modelContainer(PreviewContainer)
}

