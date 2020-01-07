//
//  ViewController.swift
//  Yulu
//
//  Created by Amit Kumar on 07/01/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstList: UITableView!
    @IBOutlet weak var secondList: UITableView!
    
    var viewModel: ContactLsitViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ContactLsitViewModel()
        // Do any additional setup after loading the view.
        setdelegates()
        // registerCells()
    }
    
    func registerCells() {
        self.firstList.register(CustomCellTableViewCell.self, forCellReuseIdentifier: "customCell")
        self.secondList.register(CustomCellTableViewCell.self, forCellReuseIdentifier: "customCell")

    }
    
    func setdelegates() {
        self.firstList.delegate = self
        self.secondList.delegate = self
        self.firstList.dataSource = self
        self.secondList.dataSource = self
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == firstList {
            return self.viewModel.firstListRows
        } else {
            return self.viewModel.secondListRow
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        let customcell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell
        
        if tableView == firstList {
            let contact = self.viewModel.getContactData(at: indexPath.row)
            if let contact = contact {
                customcell.configureCell(with: contact)
            }
            
        } else {
            let contact = self.viewModel.getContactData(at: indexPath.row + 20)
               if let contact = contact {
                   customcell.configureCell(with: contact)
               }
        }
        cell = customcell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
