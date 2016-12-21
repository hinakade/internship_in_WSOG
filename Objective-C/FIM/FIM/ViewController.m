//
//  ViewController.m
//  FIM
//
//  Created by 嘉手苅ひな on 2016/11/11.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController
//値受け渡し確認　変数宣言
int n = 0;

//値受け渡し機能
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

                self.check_ans01.text = appDelegate. BtnAnsNum01;
}

    
//////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end

//    switch (n) {
//        case 1:
//            self.check_ans01.text = appDelegate. BtnAnsNum01;
//            break;
//        case 2:
//            self.check_ans02.text = appDelegate. BtnAnsNum01;
//            break;
//        case 3:
//            self.check_ans03.text = appDelegate. BtnAnsNum01;
//            break;
//        case 4:
//            self.check_ans04.text = appDelegate. BtnAnsNum01;
//            break;
//        case 5:
//            self.check_ans05.text = appDelegate. BtnAnsNum01;
//            break;
//        case 6:
//            self.check_ans06.text = appDelegate. BtnAnsNum01;
//            break;
//        case 7:
//            self.check_ans07.text = appDelegate. BtnAnsNum01;
//            break;
//        case 8:
//            self.check_ans08.text = appDelegate. BtnAnsNum01;
//            break;
//        case 9:
//            self.check_ans09.text = appDelegate. BtnAnsNum01;
//            break;
//        case 10:
//            self.check_ans10.text = appDelegate. BtnAnsNum01;
//            break;
//        case 11:
//            self.check_ans11.text = appDelegate. BtnAnsNum01;
//            break;
//        case 12:
//            self.check_ans12.text = appDelegate. BtnAnsNum01;
//            break;
//        case 13:
//            self.check_ans13.text = appDelegate. BtnAnsNum01;
//            break;
//        case 14:
//            self.check_ans14.text = appDelegate. BtnAnsNum01;
//            break;
//        case 15:
//            self.check_ans15.text = appDelegate. BtnAnsNum01;
//            break;
//        case 16:
//            self.check_ans16.text = appDelegate. BtnAnsNum01;
//            break;
//        case 17:
//            self.check_ans17.text = appDelegate. BtnAnsNum01;
//            break;
//        case 18:
//            self.check_ans18.text = appDelegate. BtnAnsNum01;
//            break;
//
//            default: nil;
//                break;
//        }

