//
//  FirstViewController.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/22/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController {
    
    
    @IBOutlet var menuBtnItem: UIBarButtonItem!
    

    @IBAction func TapMenuBtn(_ sender: Any) {
        
        menuBtnItem.action = #selector(SWRevealViewController.revealToggle(_:))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configs all the screen style
        let thatOrangeColor = UIColor.init(colorLiteralRed: 0.815, green: 0.3098, blue: 0.047, alpha: 1.0)
        
        self.view.backgroundColor = thatOrangeColor
        
        self.title = "Dashboard"
        
        self.navigationController?.navigationBar.barTintColor = thatOrangeColor
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        //config of the rear menu
        
       
            menuBtnItem.target = self.revealViewController()
            menuBtnItem.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        
        
        
        
        
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

