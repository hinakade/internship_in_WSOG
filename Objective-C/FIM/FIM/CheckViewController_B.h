//
//  CheckViewController_B.h
//  FIM
//
//  Created by 嘉手苅ひな on 2016/12/20.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckViewController_B : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UILabel *localLabel01;
@property (weak, nonatomic) IBOutlet UILabel *q1;
@property (weak, nonatomic) IBOutlet UILabel *q2;
@property (weak, nonatomic) IBOutlet UILabel *q3;
@property (weak, nonatomic) IBOutlet UILabel *q4;

@property NSDictionary *jsonans;

@end
