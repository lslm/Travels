//
//  HighlightTravelViewModel.swift
//  Travels
//
//  Created by Lucas Santos on 17/02/24.
//

import Foundation

class HighlightTravelViewModel: TravelViewModel {
    var sectionType: String = "Destages"
    
    var type: TravelViewModelType = .highlights
    
    var travels: [Travel]
    
    var rowNumber: Int {
        return travels.count
    }
    
    init(_ travels: [Travel]) {
        self.travels = travels
    }
}
