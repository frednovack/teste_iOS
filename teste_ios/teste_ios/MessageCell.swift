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
    var titleLabel : UILabel? = nil
    var alertIcon : UIImageView? = nil
    var legendLabel : UILabel? = nil
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //future method for passing the message to show
    func setMessageCell(){
        let superViewFrame = superview?.frame
        
        print("Self Width > \(self.frame.width)")
        
        //organize the text label
        titleLabel = UILabel.init(frame: CGRect.init(x: 30, y: 15.5, width: (superViewFrame?.width)! * 0.5, height: 60))
        
        titleLabel?.lineBreakMode = .byTruncatingTail
        
        titleLabel?.numberOfLines = 2
       // writing on text label for prototype purposes
        titleLabel?.text = "Como decorar uma festa infantil maravilhosa"
        
        
        cashValueLabel = UILabel.init(frame: CGRect.init(x: (superViewFrame?.width)! - (100 + ((superViewFrame?.width)! * 0.04)), y: 90, width: 100, height: 17))
        
        cashValueLabel?.textAlignment = .right

        cashValueLabel?.text = "R$ 1035,00"
        
        cashValueLabel?.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        
        cashValueLabel?.textColor = UIColor.init(colorLiteralRed: 0.286, green: 0.509, blue: 0.772, alpha: 1.0)
        
        //configuring aler icon
        //Alert icon for demonstration pruposes will ramdonly be generated
        if shouldAlertDisplay() {
             alertIcon = UIImageView.init(frame: CGRect.init(x: (superViewFrame?.width)! - (25 + ((superViewFrame?.width)! * 0.04)), y: 14.5, width: 25, height: 25))
            alertIcon?.image = UIImage.init(named: "ico_alert.png")
            
            self.addSubview(alertIcon!)
           
        }
        
        //Configure legend label
        legendLabel = UILabel.init(frame: CGRect.init(x: 30, y: 80, width: (superViewFrame?.width)! * 0.45, height: 17))
        
        legendLabel?.textColor = UIColor.init(red: 0.32, green: 0.32, blue: 0.32, alpha: 0.7)
        
        legendLabel?.font = UIFont.init(name: "Helvetica", size: 12)
        
        legendLabel?.text = "id 30294080-11/01/2016"
        
        
        self.addSubview(legendLabel!)
        self.addSubview(cashValueLabel!)
        self.addSubview(titleLabel!)
        
        print("HERE!")
    }
    
    
    func setGreybackground( flagGrey : Bool){
        if flagGrey{
            self.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        }else{
            self.backgroundColor = UIColor.white
        }
    }
    
    private func shouldAlertDisplay() -> Bool {
        let number = Int(arc4random_uniform(10) + 1)
        
        if number <= 4 {
            return true
        }
        else{
            return false
        }
        
        
    }

}
