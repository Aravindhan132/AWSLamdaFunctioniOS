//
//  PlayerModel.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import Foundation

// MARK: - CardModel
class PlayerModel: Codable {
    let players: [Player]

    init(players: [Player]) {
        self.players = players
    }
}

// MARK: - Player
class Player: Codable {
    let playerDescription, firstName, lastName: String

    enum CodingKeys: String, CodingKey {
        case playerDescription = "description"
        case firstName = "FirstName"
        case lastName = "LastName"
    }

    init(playerDescription: String, firstName: String, lastName: String) {
        self.playerDescription = playerDescription
        self.firstName = firstName
        self.lastName = lastName
    }
}
