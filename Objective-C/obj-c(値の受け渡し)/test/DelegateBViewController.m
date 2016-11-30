//
//  DelegateBViewController.m
//  test
//
//  Created by 嘉手苅ひな on 2016/11/16.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "DelegateBViewController.h"


// Delegate画面遷移用
#import "AppDelegate.h"




@interface DelegateBViewController ()

@end

@implementation DelegateBViewController






- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - appDelegateに転送
// View が表示される直前に呼ばれるメソッド
// タブ等の切り替え等により、画面に表示されるたびに呼び出されます。
// タブが切り替わるたびに何度でも呼ばれます。
/*
 iPhone開発 UIViewController ライフサイクル viewDidLoad viewWillAppear viewDidAppear viewWillDisappear viewDidDisappear ios 逆引き サンプル
 */



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    self.localLabel01.text = appDelegate. globalStrings01;
}




////

//値の受け渡し機能実装する//////////////////////////

- (IBAction)btn07:(UIButton *)sender {
    _TotalResult.text = @"7点";
    
    // delegateデータを送る準備
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    // appDelegate.globalStrings01 転送
    appDelegate.BtnAnsNum01 =  self.TotalResult.text;
    
    
}


- (IBAction)btn06:(UIButton *)sender {
    _TotalResult.text = @"6点";
    
    // delegateデータを送る準備
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    // appDelegate.globalStrings01 転送
    appDelegate.BtnAnsNum01 =  self.TotalResult.text;
    
}









///////////////////////////////////////////////

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
