//
//  TableViewController.m
//  FIM
//
//  Created by 嘉手苅ひな on 2016/11/25.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController (){
    NSArray* arrayText;
    
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // テーブルの行に入れるデータを配列で作成
    arrayText =  @[@"食事", @"整容", @"清拭", @"更衣（上半身）", @"更衣（下半身）",
                   @"トイレ", @"排尿コントロール", @"排便コントロール"];
                   
                   // ,@"ベッド・椅子・車椅子",@"トイレ" @"浴槽・シャワー", @"歩行・車椅子（主な移動手段）", @"社会的交流",@"問題解決",@"記憶"]
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //これを増やすと暮らすが増える
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // 挿入値が増えたら増やす
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [arrayText objectAtIndex:indexPath.row];
    
    return cell;
}

////////////////////////////////////////////////////////

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//   
//    printf("異常が発生しました。");
//}


@end
