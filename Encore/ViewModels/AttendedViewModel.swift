//
//  AttendedViewModel.swift
//  Encore
//
//  Created by Ali-Taabesh Sayyed on 9/16/26.
//

import Foundation

@Observable
final class AttendedViewModel{
    var searchText = ""
    var showingAddSheet = false
    
    func filteredShows(_ shows:[Show]) -> [Show] {
        let attended = shows.filter({$0.status == .attended})
        guard !searchText.isEmpty else { return attended }
        return attended.filter {
            $0.artistName.localizedCaseInsensitiveContains(searchText) ||
            $0.venueName.localizedCaseInsensitiveContains(searchText) ||
            $0.city.localizedStandardContains(searchText)
        }
    }
}
