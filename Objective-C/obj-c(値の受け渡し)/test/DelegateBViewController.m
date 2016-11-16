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
