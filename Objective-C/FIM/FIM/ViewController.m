//
//  ViewController.m
//  FIM
//
//  Created by 嘉手苅ひな on 2016/11/11.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "CheckViewController.h"
#import "CheckViewController_B.h"
#import "CheckViewController_C.h"

@interface ViewController () @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bnd01 = [NSBundle mainBundle];
    NSString *pth01 = [bnd01 pathForResource:@"q_fim"ofType:@"json"];
    NSURL *url01 = [NSURL fileURLWithPath:pth01];
    
    NSURLRequest *req01 = [NSURLRequest requestWithURL:url01];
    
    NSData *dat01 = [NSURLConnection sendSynchronousRequest:req01
                                          returningResponse:nil error:nil];
    // JSONオブジェクトの取得
    NSDictionary *cor01 =(NSDictionary *)
    [NSJSONSerialization JSONObjectWithData:dat01
                                    options:NSJSONReadingMutableContainers
     // 基本的にはこれを選ぶ
                                      error:nil];
    _arguments = cor01[@"fim_q"][0][@"q1_food"];
    
    //memo  --------------------------------------------------
    //segue の名前　：　secondsegue
    //参考サイト　：　https://lab.dolice.net/blog/2013/03/31/xcode-objc-ui-storyboard-segue/
    // --------------------------------------------------------
}

//値受け渡し確認　変数宣言
    int btni;
    btni = 3;

    //値受け渡し機能
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{   self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) { }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{   [super viewWillAppear:animated];
    
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    switch (btni) {
        case 1:  self.check_ans01.text = appDelegate. BtnAnsNum01; break;
        case 2:  self.check_ans02.text = appDelegate. BtnAnsNum01; break;
        case 3:  self.check_ans03.text = appDelegate. BtnAnsNum01; break;
        case 4:  self.check_ans04.text = appDelegate. BtnAnsNum01; break;
        case 5:  self.check_ans05.text = appDelegate. BtnAnsNum01; break;
        case 6:  self.check_ans06.text = appDelegate. BtnAnsNum01; break;
        case 7:  self.check_ans07.text = appDelegate. BtnAnsNum01; break;
        case 8:  self.check_ans08.text = appDelegate. BtnAnsNum01; break;
        case 9:  self.check_ans09.text = appDelegate. BtnAnsNum01; break;
        case 10: self.check_ans10.text = appDelegate. BtnAnsNum01; break;
        case 11: self.check_ans11.text = appDelegate. BtnAnsNum01; break;
        case 12: self.check_ans12.text = appDelegate. BtnAnsNum01; break;
        case 13: self.check_ans13.text = appDelegate. BtnAnsNum01; break;
        case 14: self.check_ans14.text = appDelegate. BtnAnsNum01; break;
        case 15: self.check_ans15.text = appDelegate. BtnAnsNum01; break;
        case 16: self.check_ans16.text = appDelegate. BtnAnsNum01; break;
        case 17: self.check_ans17.text = appDelegate. BtnAnsNum01; break;
        case 18: self.check_ans18.text = appDelegate. BtnAnsNum01; break;
        default: self.check_ans01.text = appDelegate. BtnAnsNum01; break;
       }
    }

// textごとに振り分け [値の受け渡し]
- (IBAction)btn_01:(UIButton *)sender;{
    btni = 1;
    [self performSegueWithIdentifier:@"secondSegue" sender:self];
}
- (IBAction)btn_02:(UIButton *)sender { btni = 2;}
- (IBAction)btn_03:(UIButton *)sender { btni = 3;}
- (IBAction)btn_04:(UIButton *)sender { btni = 4;}
- (IBAction)btn_05:(UIButton *)sender { btni = 5;}
- (IBAction)btn_06:(UIButton *)sender { btni = 6;}
- (IBAction)btn_07:(UIButton *)sender { btni = 7;}
- (IBAction)btn_08:(UIButton *)sender { btni = 8;}
- (IBAction)btn_09:(UIButton *)sender { btni = 9;}
- (IBAction)btn_10:(UIButton *)sender { btni = 10;}
- (IBAction)btn_11:(UIButton *)sender { btni = 11;}
- (IBAction)btn_12:(UIButton *)sender { btni = 12;}
- (IBAction)btn_13:(UIButton *)sender { btni = 13;}
- (IBAction)btn_14:(UIButton *)sender { btni = 14;}
- (IBAction)btn_15:(UIButton *)sender { btni = 15;}
- (IBAction)btn_16:(UIButton *)sender { btni = 16;}
- (IBAction)btn_17:(UIButton *)sender { btni = 17;}
- (IBAction)btn_18:(UIButton *)sender { btni = 18;}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //2つ目の画面にパラメータを渡して遷移する
    if ([segue.identifier isEqualToString:@"secondSegue"]) {
        CheckViewController *secondViewController = segue.destinationViewController;
        secondViewController.arguments = _arguments;
    }
}

//////////////////////////////////////////

- (void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
@end



