//
//  Club.swift
//  EventosSanPedro
//
//  Created by Ricardo on 08/03/24.
//

import CloudKit
import Foundation

struct Club {
    var identifier: UUID
    var name: String
    var description: String?
    var category: String
    var phone: String
    var email: String
    var isOpenForSubscription: Bool
}
