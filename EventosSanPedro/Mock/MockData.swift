//
//  MockData.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import Foundation
import CoreLocation

// Sample Events
let sampleEvents: [Event] = [
    Event(
        id: UUID(),
        title: "City Marathon",
        description: "Annual city marathon with categories for all ages.",
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
    ),
    Event(
        id: UUID(),
        title: "Tech Expo 2024",
        description: "Explore the latest in tech innovation.",
        date: Calendar.current.date(byAdding: .month, value: 1, to: Date())!,
        endDate: Calendar.current.date(byAdding: .day, value: 3, to: Calendar.current.date(byAdding: .month, value: 1, to: Date())!),
        startTime: Calendar.current.date(byAdding: .hour, value: 10, to: Date())!,
        endTime: Calendar.current.date(byAdding: .hour, value: 18, to: Date())!,
        location: UUID(),
        subLocation: "Exhibition Center Hall 3",
        coordinates: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        category: "Large Events/Expos",
        isClubEvent: false,
        club: nil,
        recurringInfo: "Annually",
        popularity: 200
    ),
    Event(
        id: UUID(),
        title: "Senior's Bingo Night",
        description: "A fun bingo night for senior citizens.",
        date: Calendar.current.date(byAdding: .weekOfMonth, value: 2, to: Date())!,
        endDate: nil,
        startTime: Calendar.current.date(byAdding: .hour, value: 19, to: Date())!,
        endTime: Calendar.current.date(byAdding: .hour, value: 22, to: Date())!,
        location: UUID(),
        subLocation: "Community Center",
        coordinates: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278),
        category: "Senior Citizens",
        isClubEvent: false,
        club: nil,
        recurringInfo: "Monthly",
        popularity: 50
    ),
    Event(
        id: UUID(),
        title: "Yoga in the Park",
        description: "Morning yoga sessions to rejuvenate your spirit.",
        date: Calendar.current.date(byAdding: .day, value: 10, to: Date())!,
        endDate: nil,
        startTime: Calendar.current.date(byAdding: .hour, value: 6, to: Date())!,
        endTime: Calendar.current.date(byAdding: .hour, value: 7, to: Date())!,
        location: UUID(),
        subLocation: "Near the lake",
        coordinates: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437),
        category: "Recreational",
        isClubEvent: false,
        club: nil,
        recurringInfo: "Weekly",
        popularity: 75
    ),
    Event(
        id: UUID(),
        title: "Downtown Art Walk",
        description: "Discover the local art scene with a guided tour.",
        date: Calendar.current.date(byAdding: .day, value: 20, to: Date())!,
        endDate: nil,
        startTime: Calendar.current.date(byAdding: .hour, value: 17, to: Date())!,
        endTime: Calendar.current.date(byAdding: .hour, value: 20, to: Date())!,
        location: UUID(),
        subLocation: "Downtown Galleries",
        coordinates: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
        category: "Cultural",
        isClubEvent: false,
        club: nil,
        recurringInfo: "Bi-Monthly",
        popularity: 120
    )
]

