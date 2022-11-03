//
//  GameScore.swift
//  stateness
//
//  Created by Lutaka Muyoba Chihota on 10/30/22.
//

import Foundation

class GameScore:ObservableObject{
    @Published var numericalScore:Int = 0
    @Published var piecesCaptured:Int = 0
}
