//
//  SecondViewController.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/22/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    
    @IBOutlet var messagesTable: UITableView!
    
    @IBOutlet var menuBtn: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let thatBlueColor = UIColor.init(colorLiteralRed: 0.286, green: 0.509, blue: 0.772, alpha: 1.0)
        
        self.view.backgroundColor = thatBlueColor
        
        self.title = "Minhas Vendas"
        
        self.navigationController?.navigationBar.barTintColor = thatBlueColor
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        //config of the rear menu
        
        
        menuBtn.target = self.revealViewController()
        menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        //config table view
        let tableHeight  = self.view.frame.height - (self.tabBarController?.tabBar.frame.height)!
        messagesTable.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: tableHeight)
        self.edgesForExtendedLayout = UIRectEdge.all
        
        messagesTable.contentInset = UIEdgeInsetsMake(0, 0, (self.tabBarController?.tabBar.frame.height)!, 0)
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as? MessageCell
     
     // Configure the cell...
        
        cell?.setMessageCell()
        
        //set all even indexpath.row as grey background
        if indexPath.row % 2 == 0 {
            cell?.setGreybackground(flagGrey: true)
        }else{
            cell?.setGreybackground(flagGrey: false)
        }
     
     return cell!
     }
 
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */

}

