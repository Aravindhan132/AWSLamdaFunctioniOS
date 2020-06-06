//
//  Utility.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import Foundation
struct Utility {
    static let listURL = "https://pszr4ji8if.execute-api.us-east-1.amazonaws.com/live/playerlist"
}

enum JSONMethodType: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
}
