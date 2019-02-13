//
//  ViewController.swift
//  NumberTable
//
//  Created by IMCS2 on 2/12/19.
//  Copyright © 2019 com.phani. All rights reserved.
//Develop branch

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    let  n: Int = 50
    //var i: Int = 0
    var num = 0
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var currentnum: UILabel!
    @IBAction func sliderChanged(_ sender: UISlider) {
         num = Int(sender.value)
        currentnum.text="Current multiplier: \(num)"
   table.reloadData()
    
    

    }
//  @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return n
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        while indexPath.row <= n{
            
            cell.textLabel?.text = "\(num) *  \(indexPath.row+1)  = \((indexPath.row+1) * num)"
            
            return cell
        }
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

