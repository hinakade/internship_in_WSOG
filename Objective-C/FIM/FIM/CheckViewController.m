//
//  CheckViewController.m
//  FIM
//
//  Created by 嘉手苅ひな on 2016/11/11.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "CheckViewController.h"

@interface CheckViewController ()

@end

@implementation CheckViewController

- (IBAction)btn07:(UIButton *)sender {
    int Score;
    Score = 7;
    printf("7点");
    _result.text = @"7点";
}
- (IBAction)btn06:(UIButton *)sender {
    int Score;
    Score = 6;
    printf("6点");
    _result.text = @"6点";
}





- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
