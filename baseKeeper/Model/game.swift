//
//  game.swift
//  baseKeeper
//
//  Created by John Barney on 9/8/20.
//  Copyright © 2020 John Barney. All rights reserved.
//

import Foundation

class Inning {
    enum topBottom{
        case top
        case bottom
    }
    
    var tB: topBottom = topBottom.top
    var inning: Int = 1
    
    func printInning() {
        print ("\(tB) of the \(inning)")
    }
    
    func nextInning() {
        if tB == topBottom.top {
            tB = topBottom.bottom
        }
        else {
            tB = topBottom.top
            inning += 1
        }
    }
    
}


class Game {
    
    enum HorA {
        case home
        case away
    }
    
    var inning: Inning = Inning.init()
    var homeScore: Int = 0
    var awayScore: Int = 0
    var outs: Int = 0
    
    func outMade() {
        outs += 1
        if outs == 3 {
            inning.nextInning()
        }
    }
    func runsScored(runs: Int, homeOrAway: HorA) {
        if homeOrAway == HorA.home {
            homeScore += runs
        }
        else if homeOrAway == HorA.away {
            awayScore += runs
        }
    }
    
}

class Player {
    enum position {
        case P
        case C
        case FIRST
        case SECOND
        case SS
        case THIRD
        case LF
        case CF
        case RF
        case DH
        case bench
    }
    init(name: String, position: position) {
        self.position = position
        self.name = name
    }
    var position: position
    var name: String
    
}

class Lineup {
    enum HorA {
        case home
        case away
    }
    var HorA: HorA
    var lineup: [Player]
    
    init(HorA: HorA, lineup: [Player]) {
        self.HorA = HorA
        self.lineup = lineup
    }

}

