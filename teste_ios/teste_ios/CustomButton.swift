//
//  CustomButton.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/25/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit
import QuartzCore

class CustomButton: UIButton {
    
    var contactNameSubtitle : String = ""
    
    private var subtitle : UILabel!
    
    func setContactName(contactName : String) {
        
        contactNameSubtitle = contactName
        
        self.setTitle(String(contactName.characters[contactName.startIndex]), for: .normal)
        
        self.titleLabel?.font = UIFont.init(name: "Helvetica", size: 20)
        
        subtitle = UILabel.init(frame: CGRect.init(x: 0, y: self.frame.height, width: self.frame.width, height: 11))
        
        subtitle.text = contactNameSubtitle
        
        subtitle.textAlignment = .center
        
        subtitle.font = UIFont.init(name: "Helvetica", size:9)
        
        subtitle.numberOfLines = 2
        
        subtitle.lineBreakMode = .byWordWrapping
        
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        
        
        
        self.addSubview(subtitle)
        
        
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
