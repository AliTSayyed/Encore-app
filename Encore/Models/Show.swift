//
//  Show.swift
//  Encore
//
//  Created by Ali-Taabesh Sayyed on 9/16/26.
//

import Foundation

enum ShowStatus {
    case attended
    case upcoming
}

struct Show: Identifiable {
    var artistName: String
    var venueName: String
    var city: String
    var status: ShowStatus
    
    let id = UUID()
}
