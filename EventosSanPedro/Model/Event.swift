//
//  Event.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import CloudKit
import Foundation

struct Event: Identifiable {
    var id: UUID
    var title: String
    var description: String?
    var date: Date
    var endDate: Date?
    var startTime: Date
    var endTime: Date?
    var location: UUID // Assuming this is an identifier for a Place
    var subLocation: String?
    var coordinates: CLLocationCoordinate2D
    var category: String
    var isClubEvent: Bool
    var club: UUID? // Assuming this is an identifier for a Club
    var recurringInfo: String?
    var popularity: Int?
}
