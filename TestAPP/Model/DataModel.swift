//
//  DataModel.swift
//  TestAPP
//
//  Created by Vladyslav on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

struct Response: Codable {
    var items: [Items]
}

struct Items: Codable {
    var active: Int
    var name: String
}

