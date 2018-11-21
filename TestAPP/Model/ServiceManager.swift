//
//  ServiceManager.swift
//  TestAPP
//
//  Created by Vladyslav on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class ServiceManager: NSObject {

    public static let shared = ServiceManager()
    private override init() { super.init() }

    typealias handler = (_ users: [Items], _ error: Error?) -> Void
    
    func fetchData(completionHandler: @escaping handler) {
        if let path = Bundle.main.url(forResource: "items", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let response = try JSONDecoder().decode(Response.self, from: data)
                completionHandler(response.items, nil)
            } catch {
                print(error)
            }
        }
    }

}
