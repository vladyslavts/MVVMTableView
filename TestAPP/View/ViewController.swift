//
//  ViewController.swift
//  TestAPP
//
//  Created by Andrii Mazepa on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModels = [DataViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServiceManager.shared.fetchData { (response, error) in
            self.viewModels = response.map { return DataViewModel(with: $0) }.filter { $0.active > 0 }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = viewModels[indexPath.row].name
        return cell
    }
}
