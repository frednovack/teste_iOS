//
//  MessageCell.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/26/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    var cashValueLabel : UILabel? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let superViewFrame = superview?.frame
        //organize the text label
        self.textLabel?.frame = CGRect.init(x: 30, y: 18.5, width: (superViewFrame?.width)! *  0.4, height: 30)
        //writing on text label for prototype purposes
        self.textLabel?.text = "Como decorar uma festa infantil maravilhosa"
        
        
        cashValueLabel = UILabel.init(frame: CGRect.init(x: (superViewFrame?.width)! - (70 + ((superViewFrame?.width)! * 0.038)), y: 80, width: 70, height: 15))
        
        cashValueLabel?.text = "R$ 1035,00"
        
        self.addSubview(cashValueLabel!)
        
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
