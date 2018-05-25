//
//  FloatOptionCell.swift
//  Dotzu
//
//  Created by Andrey Volodin on 24.05.2018.
//

import UIKit.UITableViewCell

class FloatOptionCell: UITableViewCell, OptionCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    var option: FloatOption?
    
    @IBAction func valueChanged(_ sender: UISlider) {
        self.valueLabel.text = "\(slider.value)"
        
        option?.value = sender.value
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(-10, -10, -10, -10))
    }
    
    func configure(for option: Option) {
        guard let fOption = option as? FloatOption else {
            return
        }
        
        self.slider.minimumValue = fOption.min
        self.slider.maximumValue = fOption.max
        self.slider.value = fOption.value
        
        self.valueLabel.text = "\(fOption.value)"
        self.name.text = option.name
        
        self.option = fOption
    }

}
