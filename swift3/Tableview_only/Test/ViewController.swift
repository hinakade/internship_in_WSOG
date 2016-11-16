//
//  ViewController.swift
//  Test
//
//  Created by 嘉手苅ひな on 2016/10/21.
//  Copyright © 2016年 嘉手苅ひな. All rights reserved.
//

import UIKit

    class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
        
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            tableView.delegate = self
            tableView.dataSource = self
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        // セルに表示するテキスト
        let texts = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        
        
        // セルの行数
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return texts.count
        }
        
        
        //セルの内容を変更
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
            
            cell.textLabel?.text = texts[indexPath.row]
            return cell
        }
        
    }
    

