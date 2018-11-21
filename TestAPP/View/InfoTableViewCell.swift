//
//  InfoTableViewCell.swift
//  TestAPP
//
//  Created by Vladyslav Shepitko on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    var viewModel: DataViewModel!  {
        didSet {
            textLabel?.text = viewModel.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
