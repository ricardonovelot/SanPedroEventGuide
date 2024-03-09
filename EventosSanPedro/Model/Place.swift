//
//  Place.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import CloudKit
import Foundation

struct Place {
    var identifier: UUID
    var name: String
    var description: String?
    var coordinates: CLLocationCoordinate2D
    var address: String
}
