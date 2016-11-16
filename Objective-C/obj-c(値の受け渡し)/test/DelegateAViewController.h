//
//  DelegateAViewController.h
//  test
//
//  Created by 嘉手苅ひな on 2016/11/16.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DelegateAViewController : UIViewController

//03 グローバルフィールド入力
@property (weak, nonatomic) IBOutlet UITextField *globalStrings01;


//04 データ受け渡しアクションボタン
- (IBAction)Second:(id)sender;

@end
