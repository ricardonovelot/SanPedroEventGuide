//
//  ContentView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import SwiftUI
import SwiftData

struct TodayView: View {
    @Environment(\.modelContext) var modelContext
    @Query var occurrences: [Occurrence]
    
    @State private var animate = true
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 28){
                    CarouselView()
                    ListView()
                    ListView()
                }
            }
            .navigationTitle("Buenas Tardes!")
            .contentMargins(.top, 16)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Button {
                        } label: {
                            Label("Ajustes", systemImage: "gearshape")
                        }
                    } label: {
                        Label("Menu", systemImage: "ellipsis.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    TodayView()
        .modelContainer(PreviewContainer)
}
