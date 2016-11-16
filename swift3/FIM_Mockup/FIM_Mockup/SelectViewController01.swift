//
//  SelectViewController01.swift
//  FIM_Mockup
//
//  Created by 嘉手苅ひな on 2016/10/26.
//  Copyright © 2016年 嘉手苅ひな. All rights reserved.
//

import UIKit

class SelectViewController01: UIViewController {
    
    //押したボタンによってサブタイトル表示の変更する
    // Segue 宣言
     //01 Food
    @IBAction func buttonTapped(sender : AnyObject) {
        performSegue(withIdentifier: "Food01ShowSegue",sender: nil)
    }
     //02 Clean
    @IBAction func buttonTapped02(sender: AnyObject) {
        performSegue(withIdentifier: "Clean02ShowSegue",sender: nil)
    }
     //03 Bed-bath
    @IBAction func buttonTapped03(sender: AnyObject) {
        performSegue(withIdentifier: "Bed-bath03ShowSegue",sender: nil)
    }
     //04 Toilet
    @IBAction func buttonTapped04(sender: AnyObject) {
        performSegue(withIdentifier: "Clean02ShowSegue",sender: nil)
    }
     //05 DressingUp
    @IBAction func buttonTapped05(sender: AnyObject) {
    performSegue(withIdentifier: "DressingUp05ShowSegue",sender: nil)
    }
     //06 DressingDown
    @IBAction func buttonTapped06(sender: AnyObject) {
            performSegue(withIdentifier: "DressingDown06ShowSegue",sender: nil)
    }

    
    // Segue 準備
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //01
        if (segue.identifier == "Food01ShowSegue") {
            let vc2: DetailViewController = (segue.destination as?DetailViewController)!
             vc2.textVC2 = "食事"
        }
        //02
        if (segue.identifier == "Clean02ShowSegue"){
            let vc2: DetailViewController = (segue.destination as? DetailViewController)!
            vc2.textVC2 = "整容"
        }
        //03
        if (segue.identifier == "Bed-bath03ShowSegue"){
            let vc2: DetailViewController = (segue.destination as? DetailViewController)!
            vc2.textVC2 = "清拭"
        }
        //04
        if (segue.identifier == "Toilet04ShowSegue"){
            let vc2: DetailViewController = (segue.destination as? DetailViewController)!
            vc2.textVC2 = "トイレ"
        }
        //05
        if (segue.identifier == "DressingUp05ShowSegue"){
            let vc2: DetailViewController = (segue.destination as? DetailViewController)!
            vc2.textVC2 = "更衣（上)"
        }
        //06
        if (segue.identifier == "DressingDown06ShowSegue"){
            let vc2: DetailViewController = (segue.destination as? DetailViewController)!
            vc2.textVC2 = "更衣(下)"
        }

        }

    // Segue List --------------------------

    //01 食事　    Food01ShowSegue
    //02 整容　    Clean02ShowSegue
    //03 清拭      Bed-bath03ShowSegue
    //04 トイレ    Toilet04ShowSegue
    //05 更衣（上） DressingUp05ShowSegue
    //06 更衣 (下) DressingDown06ShowSegue
    
    
    // Memo -----------------------------
    //ID  mx5ewc4w
    
    // Button -- NameList --------------------
    
    // 食事　     Food01
    // 整容　     Clean02
    // 清拭       Bed-bath03
    // トイレ　   Toilet04
    // 更衣（上） DressingUp05
    // 更衣 (下) DressingDown06
    
    ////////////////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
