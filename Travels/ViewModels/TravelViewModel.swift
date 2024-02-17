//
//  TravelViewModel.swift
//  Travels
//
//  Created by Lucas Santos on 17/02/24.
//

import Foundation

enum TravelViewModelType: String {
    case highlights
    case offers
    case internationals
}

protocol TravelViewModel {
    var sectionType: String { get }
    var type: TravelViewModelType { get }
    var travels: [Travel] { get set }
    var rowNumber: Int { get }
}
