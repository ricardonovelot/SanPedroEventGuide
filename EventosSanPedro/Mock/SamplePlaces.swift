//
//  PlacesMockData.swift
//  EventosSanPedro
//
//  Created by Ricardo on 14/03/24.
//

import Foundation
import CoreLocation

let samplePlaces = [
    Place(
        identifier: UUID(),
        name: "Parque el Capitán",
        description: nil,
        coordinates: CLLocationCoordinate2D(latitude: 25.665027217310495, longitude: -100.36134990301632),
        address: "Fuentes del Valle, 66220 San Pedro Garza García, NL",
        subLocations: ["Terraza 1","Terraza 2","Explanada Verde","Tumbona","Cancha de Básquet","Explanada Hamacas"]
    ),
    Place(
        identifier: UUID(),
        name: "Parque Rufino Tamayo",
        description: nil,
        coordinates: CLLocationCoordinate2D(latitude: 25.64489790900045, longitude: -100.3288852595111),
        address: "Av. Rufino Tamayo 100, Zona Valle Oriente, 66278 San Pedro Garza García, N.L.",
        subLocations: ["Explanada","Jardín Infantil"]
    ),
    Place(
        identifier: UUID(),
        name: "Parque Bosques del Valle",
        description: nil,
        coordinates: CLLocationCoordinate2D(latitude: 25.642384938210522, longitude: -100.375682734731),
        address: "Av Alfonso Reyes 406, Bosques del Valle 4to Sector, 66250 San Pedro Garza García, N.L.",
        subLocations: ["Explanada Verde Sur","Anfiteatro","Cancha Básquetbol"]
    ),
    Place(
        identifier: UUID(),
        name: "Parque Mississipi",
        description: nil,
        coordinates: CLLocationCoordinate2D(latitude: 25.656680949278666, longitude: -100.36312962114103),
        address: "Río Mississippi 270, Del Valle, 66220 San Pedro Garza García, N.L."
    )
]


let locationParqueCapitan = samplePlaces[0].identifier
let locationParqueRufino = samplePlaces[1].identifier
let locationParqueBosques = samplePlaces[2].identifier
let locationParqueMississipi = samplePlaces[3].identifier
