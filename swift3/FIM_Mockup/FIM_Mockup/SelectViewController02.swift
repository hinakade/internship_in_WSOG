//
//  SelectViewController02.swift
//  FIM_Mockup
//
//  Created by 嘉手苅ひな on 2016/10/21.
//  Copyright © 2016年 嘉手苅ひな. All rights reserved.
//

import UIKit

class SelectViewController02: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }

    // セルに表示するテキスト
    let texts = ["運動項目", "セルフケア", "食事", "整容", "清拭", "更衣(上半身)", "更衣（下半身）","トイレ"]
    
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
    
    
    //実験
    
    
    
    
    
    
    ///////////////////////////////////////
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // let texts = ["運動項目", "セルフケア", "食事", "整容", "清拭", "更衣(上半身)", "更衣（下半身）","トイレ"]
    
}
