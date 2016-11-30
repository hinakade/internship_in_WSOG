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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
