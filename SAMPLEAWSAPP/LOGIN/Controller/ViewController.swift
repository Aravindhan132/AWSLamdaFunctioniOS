//
//  ViewController.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var dataSource: PlayerModel? = nil
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.prepareNavigation()

        self.triggerAPI { (isSuccess) in
            if !isSuccess {return}
            
            self.prepareList()
        }
    }
    
    fileprivate func prepareNavigation() {
        self.title = "DEMO AWS APP"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

}

//MARK:- Table Properties & Prepare List
extension ViewController {
    fileprivate func registerCell() {
        self.tableView.register(UINib(nibName: "PlayerCell", bundle: nil), forCellReuseIdentifier: "PlayerCell")
    }

    func prepareList() {
        DispatchQueue.main.async {
            self.tableView.frame = self.view.frame
            self.view.addSubview(self.tableView)
            self.registerCell()
            self.tableView.dataSource = self
            self.tableView.rowHeight = 200
            self.tableView.reloadData()
        }
    }
}

//MARK:- Table DataSources
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.players.count ?? .zero
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as! PlayerCell
        cell.setData(model: dataSource?.players[indexPath.row])
        return cell
    }
}

