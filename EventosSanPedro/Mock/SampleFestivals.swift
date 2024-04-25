//
//  FestivalsMockData.swift
//  EventosSanPedro
//
//  Created by Ricardo on 14/03/24.
//

import Foundation

let sampleFestivals: [Festival] = [
    Festival(
        identifier: UUID(),
        location: locationParqueCapitan,
        name: "Festival de flores y colores",
        description: "Talleres | Exposición floral | Mercadito | Música en vivo",
        startDate: Calendar.current.date(byAdding: .hour, value: 8, to: Date())!,
        endDate: Calendar.current.date(byAdding: .hour, value: 11, to: Date())!,
        category: "Cultural"
    )
]

let festivalDeFlores = sampleFestivals[0].identifier
