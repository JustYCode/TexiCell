//
//  ViewController.swift
//  TexiCell
//
//  Created by 小黄star on 2017/5/22.
//  Copyright © 2017年 小黄star. All rights reserved.
//

import UIKit
let screenW = UIScreen.main.bounds.size.width
let screenH = UIScreen.main.bounds.size.height
class ViewController: UIViewController {
    lazy var tableView : UITableView = {
        let tableV = UITableView(frame:CGRect.init(x: 0, y: 0, width: screenW, height: screenH))
        tableV.delegate = self
        tableV.dataSource = self
        tableV.separatorColor = .none
        tableV.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableV)
        return tableV
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //        loadData()
        self.tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0.7*screenH
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailVC()
        print(123)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

