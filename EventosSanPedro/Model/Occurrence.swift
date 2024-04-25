//
//  Occurrence.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import CloudKit
import Foundation
import SwiftData

let typeCategory = ["Presentation","Workshop"]

@Model
class Occurrence: Identifiable {
    var id: UUID
    var location: [UUID]?
    var festivalIdentifier: UUID?
    var clubIdentifier: UUID?
    
    var title: String
    var subtitle: String?
    var category: String
    var imageURL: URL?
    var imageFallback: String?
    var registrationInfo: String?
    var targetAudience: [TargetAudience]?
    var presenters: [Presenter]?
    var collaborators: [Collaborator]?
    
    var date: Date
    var endDate: Date?
    var startTime: Date
    var endTime: Date?
    var recurringInfo: String?
    var subLocation: String?
    
    var popularity: Int?
    
    init(id: UUID, location: [UUID]? = nil, festivalIdentifier: UUID? = nil, clubIdentifier: UUID? = nil, title: String, subtitle: String? = nil, category: String, imageURL: URL? = nil, imageFallback: String? = nil, registrationInfo: String? = nil, targetAudience: [TargetAudience]? = nil, presenters: [Presenter]? = nil, collaborators: [Collaborator]? = nil, date: Date, endDate: Date? = nil, startTime: Date, endTime: Date? = nil, recurringInfo: String? = nil, subLocation: String? = nil, popularity: Int? = nil) {
        self.id = id
        self.location = location
        self.festivalIdentifier = festivalIdentifier
        self.clubIdentifier = clubIdentifier
        self.title = title
        self.subtitle = subtitle
        self.category = category
        self.imageURL = imageURL
        self.imageFallback = category
        self.registrationInfo = registrationInfo
        self.targetAudience = targetAudience
        self.presenters = presenters
        self.collaborators = collaborators
        self.date = date
        self.endDate = endDate
        self.startTime = startTime
        self.endTime = endTime
        self.recurringInfo = recurringInfo
        self.subLocation = subLocation
        self.popularity = popularity
    }
}
