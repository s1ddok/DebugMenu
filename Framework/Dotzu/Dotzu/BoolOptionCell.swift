//
//  BoolOptionCell.swift
//  Dotzu
//
//  Created by Andrey Volodin on 24.05.2018.
//

import UIKit.UITableViewCell

class BoolOptionCell: UITableViewCell, OptionCell {
    
    @IBOutlet weak var optionName: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    internal var option: BoolOption?
    
    @IBAction func optionDidChange(_ sender: UISwitch) {
        self.option?.value = sender.isOn
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(-10, -10, -10, -10))
    }
    
    public func configure(for option: Option) {
        guard let boolOption = option as? BoolOption else {
            fatalError("Wrong option used for configuring cell")
        }
        
        self.optionName.text = option.name
        self.switch.isOn = boolOption.value
        self.option = boolOption
    }
}
