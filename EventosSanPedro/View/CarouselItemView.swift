//
//  CarouselItemView.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import SwiftUI
import CoreLocation

struct CarouselItemView: View {
    var item: Event

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(item.description ?? "")
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .clipShape(Capsule())
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom)
        }
        .padding()
        .background(
            AsyncImage(url: URL(string: "https://cms-api.sanpedro.gob.mx/storage/component_images/4c82444c-f93c-4ba2-8fef-2e0a02522806.jpeg"), scale: 1) { image in
                image
                .resizable()
                .scaledToFill()
            } placeholder: {
                ProgressView()
            }
                
        )
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(.horizontal)
    }
}

#Preview {
    let sampleEvent = Event(
        id: UUID(),
        title: "San Pedro de Pinta",
        description: "Acompañanos cada domingo con tu familia y amigos",
        date: Calendar.current.date(byAdding: .day, value: 5, to: Date())!,
        endDate: nil,
        startTime: Calendar.current.date(byAdding: .hour, value: 8, to: Date())!,
        endTime: Calendar.current.date(byAdding: .hour, value: 11, to: Date())!,
        location: UUID(),
        subLocation: "Main Park",
        coordinates: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
        category: "Physical Activity",
        isClubEvent: false,
        club: nil,
        recurringInfo: "Yearly",
        popularity: 100
    )
    
    return CarouselItemView(item: sampleEvent)
}
