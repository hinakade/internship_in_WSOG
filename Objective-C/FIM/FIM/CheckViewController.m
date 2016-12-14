//
//  CheckViewController.m
//  FIM
//
//  Created by 嘉手苅ひな on 2016/11/11.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "CheckViewController.h"
#import "AppDelegate.h"

@interface CheckViewController ()

@end

@implementation CheckViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    self.localLabel01.text = appDelegate.BtnAnsNum01;
}





- (IBAction)btn07:(UIButton *)sender {

    printf("7点");
    // delegateデータを送る準備
    _localLabel01.text = @"7点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    // appDelegate.globalStrings01 転送
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;
    
    


}
- (IBAction)btn06:(UIButton *)sender {
    printf("6点");
    // delegateデータを送る準備
    _localLabel01.text = @"6点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    // appDelegate.globalStrings01 転送
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}



- (void)viewDidLoad {
    [super viewDidLoad];
    //jsonで内容取得
    // データの取得
    NSBundle *bnd01 = [NSBundle mainBundle];
    NSString *pth01 = [bnd01 pathForResource:@"q_fim"ofType:@"json"];
    NSURL *url01 = [NSURL fileURLWithPath:pth01];
    
    NSURLRequest *req01 = [NSURLRequest requestWithURL:url01];
    
    NSData *dat01 = [NSURLConnection sendSynchronousRequest:req01
                                          returningResponse:nil error:nil];
    // JSONオブジェクトの取得
    NSDictionary *cor01 =(NSDictionary *)
    [NSJSONSerialization JSONObjectWithData:dat01
                                    options:NSJSONReadingMutableContainers // 基本的にはこれを選ぶ
                                      error:nil];
    _q1.text = cor01[@"fim_q"][0][@"q1_food"];
    _q3.text = cor01[@"fim_q"][15][@"q4_outerwear"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
