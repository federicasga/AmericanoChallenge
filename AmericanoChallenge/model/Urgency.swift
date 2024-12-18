//
//  Urgency.swift
//  AmericanoChallenge
//
//  Created by Federica Sgammato on 13/12/24.
//

import Foundation

enum Urgency: Int, Codable, CaseIterable, Identifiable, CustomStringConvertible {
    
    case Later = 0
    case Sooner = 1
    
    var id: Self { self }
    
    
    var description: String {
        switch self {
        case .Later:
            return "Later"
        case .Sooner:
            return "Sooner"
        }
    }
    
    
}


