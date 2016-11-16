//
//  ViewController.swift
//  FIM_Mockup
//
//  Created by 嘉手苅ひな on 2016/10/19.
//  Copyright © 2016年 嘉手苅ひな. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    //ポップアップ（FIMの説明）
    @IBAction func Guide(_ sender: UIButton, forEvent event: UIEvent) {
        
        let alert = UIAlertController(title: "FIM", message: "FIMの説明", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "戻る", style: .cancel, handler: {
            (action: UIAlertAction!) -> Void in
            print("cancel pushed")
        })
        
        
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    
    ///////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

