//
//  DataViewModel.swift
//  TestAPP
//
//  Created by Vladyslav on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class DataViewModel: NSObject {

    private let item: Items

    var name: String {
        return item.name
    }

    var active: Int {
        return item.active
    }

    init(with item: Items) {
        self.item = item
    }
}
