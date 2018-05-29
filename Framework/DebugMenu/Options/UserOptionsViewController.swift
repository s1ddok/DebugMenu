//
//  UserOptionsViewController.swift
//  DebugMenu
//
//  Created by Andrey Volodin on 24.05.2018.
//

import UIKit

class UserOptionsViewController: UITableViewController {
    
    var options: [Option] = []
    
    fileprivate var registeredTypes: [ObjectIdentifier: UITableViewCell.Type] = [:]
    
    fileprivate func register(cellType: UITableViewCell.Type, for modelType: Option.Type) {
        let typeId = ObjectIdentifier(modelType)
        self.registeredTypes[typeId] = cellType
    }
    
    fileprivate func cellType(for modelType: Option.Type) -> UITableViewCell.Type? {
        let typeId = ObjectIdentifier(modelType)
        return self.registeredTypes[typeId]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerCellWithNib(cell: BoolOptionCell.self)
        self.tableView.registerCellWithNib(cell: FloatOptionCell.self)
        self.tableView.registerCellWithNib(cell: SelectionOptionCell.self)
        
        self.register(cellType: BoolOptionCell.self, for: BoolOption.self)
        self.register(cellType: FloatOptionCell.self, for: FloatOption.self)
        self.register(cellType: SelectionOptionCell.self, for: SelectionOption.self)
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 140
        
        self.options = DebugMenu.sharedManager.userOptions
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
        
        guard
            let cellType = self.cellType(for: type(of: currentOption)),
            let cell = self.tableView.dequeueCell(cell: cellType) as? OptionCell
        else {
            return UITableViewCell()
        }
        cell.configure(for: currentOption)
        
        return cell as? UITableViewCell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
