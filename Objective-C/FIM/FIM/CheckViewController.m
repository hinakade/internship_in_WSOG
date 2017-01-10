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

- (void)viewDidLoad { [super viewDidLoad]; }

//1食事
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
    _localLabel01.text = @"6点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}
- (IBAction)btn05:(UIButton *)sender {
    printf("5点");
    _localLabel01.text = @"5点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}
- (IBAction)btn04:(UIButton *)sender {
    printf("4点");
    _localLabel01.text = @"4点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}
- (IBAction)btn03:(UIButton *)sender {
    printf("3点");
    _localLabel01.text = @"3点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}
- (IBAction)btn02:(UIButton *)sender {
    _localLabel01.text = @"2点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

    printf("2点");
}
- (IBAction)btn01:(UIButton *)sender {
    printf("1点");
    _localLabel01.text = @"1点";
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.BtnAnsNum01 =  self.localLabel01.text;

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) { }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    self.localLabel01.text = appDelegate.BtnAnsNum01;
}

////////////////////////////////////////////////
- (void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
@end
