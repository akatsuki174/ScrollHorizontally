//
//  ViewController.swift
//  ScrollHorizontally
//
//  Created by akatsuki174 on 2017/06/03.
//  Copyright © 2017年 akatsuki174. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    private var items:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.separatorStyle = .none
        self.tableView.showsVerticalScrollIndicator = false
        
        self.tableView.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))

        items = ["aaa", "bbb", "ccc", "ddd", "eee", "fff"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = items[indexPath.row]
        cell.contentView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        return cell
    }
}

