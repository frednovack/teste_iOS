//
//  GlobalTabViewController.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/25/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit

class GlobalTabViewController: UITabBarController {
    
    
    override func viewWillLayoutSubviews() {
        self.tabBar.frame = CGRect.init(x: 0, y: self.view.frame.height - (self.view.frame.height * 0.10), width: self.view.frame.width, height: (self.view.frame.height * 0.10))
        print("Customized tab")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
