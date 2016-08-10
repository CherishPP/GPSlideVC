//
//  GPListViewController.h
//  SlideVC
//
//  Created by cherish on 16/2/25.
//  Copyright © 2016年 Gao_Panpan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GPListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableViewList;
}

@property (nonatomic, strong) IBOutlet UITableView *tableViewList;

- (void)viewDidCurrentView;
@end
