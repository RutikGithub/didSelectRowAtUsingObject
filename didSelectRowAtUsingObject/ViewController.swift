//
//  ViewController.swift
//  didSelectRowAtUsingObject
//
//  Created by Mac on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    var playerPhotos:[String]=["chahal","dube","jadeja","jadhav","rayudu","samson"]
    var playerfirstName:[String]=["Yuzvendra","Shivam","Ravindra","Kedar","Ambati","Sanju"]
    var playerLastName:[String]=["Chahal","Dube","Jadeja","jadhav","Rayudu","Samson"]
    var playerCity:[String]=["Jind","Mumbai","Saurashtra","Pune","Guntur","Pulluvilla"]

    var secondViewController:SecondViewController?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        registerXIB()
    }
    func registerXIB()
    {
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
}
extension ViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        playerPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as? TableViewCell
        
        cellData?.playerImage.image = UIImage(named: playerPhotos[indexPath.row])
        
        return cellData!
    }
    
    
}
extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let extractFirstName = self.playerfirstName[indexPath.row]
        let extractLastName = self.playerLastName[indexPath.row]
        let extractCity = self.playerCity[indexPath.row]
        
        
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController
        
        secondViewController?.container = Player(firstName: extractFirstName, lastName: extractLastName, city: extractCity)
               
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
}
