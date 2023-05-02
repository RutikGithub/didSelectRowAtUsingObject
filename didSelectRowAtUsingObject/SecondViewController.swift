//
//  SecondViewController.swift
//  didSelectRowAtUsingObject
//
//  Created by Mac on 02/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var secondTableView: UITableView!
        
    
    var player = [Player]()
    var container:Player?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        
    }
    func fillDataToArray()
    {
        let fName = container?.firstName
        let lName = container?.lastName
        let city = container?.city
        player.append(Player(firstName: fName!, lastName: lName!, city: city!))
        secondTableView.reloadData()
    }
    
   
    
    
    @IBAction func backButton(_ sender: Any)
    {
        navigationController?.popViewController(animated: true)
    }
  
    
    
    
    
}
extension SecondViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = secondTableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as? SecondTableViewCell
        
        cellData?.firstName.text = player[indexPath.row].firstName
        cellData?.lastName.text = player[indexPath.row].lastName
        cellData?.city.text = player[indexPath.row].city
        
        return cellData!
        
        
    }
    
    
}
