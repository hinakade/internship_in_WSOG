//
//  DetailViewController.swift
//  FIM_Mockup
//
//  Created by 嘉手苅ひな on 2016/10/25.
//  Copyright © 2016年 嘉手苅ひな. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
    
    
  //TableView 作成
    @IBOutlet weak var myTableView: UITableView!
        
  // Tableの中身
    let FimTable = ["7点　完全自立", "６点　修正自立", "5点　監視/準備", "4点　最小介助", "中等度介助", "最大介助", "全介助"]
    
  //画面遷移 ラベル設定
     @IBOutlet var label:UILabel!
     var textVC2:String?
    
    

    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
    //test
            print("詳細画面に移動しました")

            
    // 画面遷移  結果
      label.text = textVC2

            
    //  Table View   //
    
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
            
            myTableView.dataSource = self
            myTableView.delegate = self
            
            // trueで複数選択、falseで単一選択
            myTableView.allowsMultipleSelection = false
            
            myTableView.tableFooterView = UIView(frame: .zero)
            
            self.view.addSubview(myTableView)
        }
        
        // セルが選択された時に呼び出される
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let cell = tableView.cellForRow(at:indexPath)
            
        // チェックマークを入れる
            cell?.accessoryType = .checkmark
        }
        
        // セルの選択が外れた時に呼び出される
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            let cell = tableView.cellForRow(at:indexPath)
            
        // チェックマークを外す
            cell?.accessoryType = .none
        }
        
        // セルの数を返す
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return FimTable.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
            cell.textLabel?.text = "\(FimTable[indexPath.row])"
            
            // セルが選択された時の背景色を消す
            cell.selectionStyle = UITableViewCellSelectionStyle.none
            return cell
        }
    
    

    // 次のボタンを押すとサブタイトルの表示が切り替わる
    
    //次へボタン
    @IBAction func NextButton(_ sender: AnyObject) {
        
        if (label.text  == "食事"){
            label.text = "整容"
        }else if(label.text == "整容"){
            label.text = "清拭"
            
        }else if(label.text == "清拭"){
            label.text = "トイレ"
    
        }else if(label.text == "トイレ"){
            label.text = "更衣（上）"
            
        }else if(label.text == "更衣（上）"){
            label.text = "更衣（下）"
            
        }else if(label.text == "更衣（下）"){
            label.text = "食事"
            
        }
    }
    
    // 戻るボタン
    @IBAction func BackButton(_ sender: AnyObject) {
        
        if (label.text  == "食事"){
            label.text = "更衣（下）"
        }else if(label.text == "整容"){
            label.text = "食事"
            
        }else if(label.text == "清拭"){
            label.text = "整容"
            
        }else if(label.text == "トイレ"){
            label.text = "清拭"
            
        }else if(label.text == "更衣（上）"){
            label.text = "トイレ"
            
        }else if(label.text == "更衣（下）"){
            label.text = "更衣（上）"
            
        }
        
        
    }

        // ---  memo   -----------------------
    
        //01 食事　    Food01ShowSegue
        //02 整容　    Clean02ShowSegue
        //03 清拭      Bed-bath03ShowSegue
        //04 トイレ    Toilet04ShowSegue
        //05 更衣（上） DressingUp05ShowSegue
        //06 更衣 (下) DressingDown06ShowSegue

        // -----------------------------------


}
