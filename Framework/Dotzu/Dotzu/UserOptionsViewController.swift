//
//  UserOptionsViewController.swift
//  Dotzu
//
//  Created by Andrey Volodin on 24.05.2018.
//

import UIKit

class UserOptionsViewController: UITableViewController {
    
    var options: [Option] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerCellWithNib(cell: BoolOptionCell.self)
        self.tableView.registerCellWithNib(cell: FloatOptionCell.self)
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 140
        
        self.options = Dotzu.sharedManager.userOptions
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "User options"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentOption = options[indexPath.row]
        
        let type: UITableViewCell.Type
        
        if let _ = currentOption as? BoolOption {
            type = BoolOptionCell.self
        } else {
            type = FloatOptionCell.self
        }
        
        guard let cell = tableView.dequeueCell(cell: type) as? OptionCell else {
            return UITableViewCell()
        }
        cell.configure(for: currentOption)
        
        return cell as? UITableViewCell ?? UITableViewCell()
    }
    
}
