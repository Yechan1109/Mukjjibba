//
//  Action.swift
//  Mukjibba
//
//  Created by t2023-m0013 on 6/11/24.
//

import Foundation


enum Action {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🤚"
        case .scissors:
            return "✌️"
        }
    }
}

func game (against oppenAction: Action) -> Game {
    if self == opponent Action {
        return .draw
    }
    switch self {
    case .rock:
        if oppenAction
    }
}

