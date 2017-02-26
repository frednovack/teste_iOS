//
//  FirstViewController.swift
//  teste_ios
//
//  Created by Frederico Novack Amaral Pereira on 2/22/17.
//  Copyright © 2017 frednovack. All rights reserved.
//

import UIKit
import ASHorizontalScrollView



class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let contacts = ["Pedro Matos", "Valéria Ciqueira", "Maria Carol", "Alan Turing", "Ada Lovelace", "W. Heisenberg", "Jesse J."]
    
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
    
     //MARK: - Table view data source
    
         func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return 1
        }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier  = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
     
        //First row must be ASHorizontalScrollView
        if indexPath.row == 0 {
            let horizontalScrollView = ASHorizontalScrollView.init(frame: CGRect.init(x: 0, y: 0, width: cell.frame.width, height: cell.frame.height))
            
            //sample code of how to use this scroll view
            horizontalScrollView.uniformItemSize = CGSize(width: 74.4, height: 74.4)
            
            //this must be called after changing any size or margin property of this class to get acurrate margin
            horizontalScrollView.setItemsMarginOnce()
            //create buttons for cell 1
            var buttons = [UIView]()
            
            
            var choosedColor : UIColor!
            //Loop creating buttons and  customizing them
            for i in 0...contacts.count - 1 {
                
                var aButton = CustomButton.init(frame: CGRect.init(x: 0, y: 0, width: 74, height: 74))
                
                //Choose a color depending of the index it's showing
                switch i % contacts.count {
                case 0:
                    choosedColor = UIColor.init(red: 0.639, green: 0.780, blue: 0.294, alpha: 1.0)
                    break
                case 1:
                    choosedColor = UIColor.init(red: 0.807, green: 0.258, blue: 0.317, alpha: 1.0)
                    break
                case 2:
                    choosedColor = UIColor.init(red: 0.286, green: 0.509, blue: 0.772, alpha: 1.0)
                    break
                default:
                    choosedColor = UIColor.init(red: 0.639, green: 0.780, blue: 0.294, alpha: 1.0)
                }
                
                //set chosen color to button and round it up 
                aButton.backgroundColor = choosedColor
                
                aButton.setContactName(contactName: contacts[i])
                
                buttons.append(aButton)
                
            }
            
            horizontalScrollView.addItems(buttons)
            var x = horizontalScrollView.calculateMarginBetweenItems()

            
            cell.contentView.addSubview(horizontalScrollView)
            horizontalScrollView.translatesAutoresizingMaskIntoConstraints = false
            cell.contentView.addConstraint(NSLayoutConstraint.init(item: horizontalScrollView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: cell.frame.height))
  
            cell.contentView.addConstraint(NSLayoutConstraint.init(item: horizontalScrollView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem:cell.contentView, attribute: .width, multiplier: 1, constant: 0))
            


            
        }
        else{
            //cell must be message cell
            
            
        }
     
     return cell
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

