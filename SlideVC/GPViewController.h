//
//  GPViewController.h
//  SlideVC
//
//  Created by cherish on 16/2/25.
//  Copyright © 2016年 Gao_Panpan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GPSwitchView.h"
#import "GPListViewController.h"
@interface GPViewController : UIViewController

@property (weak, nonatomic) IBOutlet GPSwitchView *slideSwitchView;
@property (nonatomic, strong) GPListViewController *vc1;
@property (nonatomic, strong) GPListViewController *vc2;
@property (nonatomic, strong) GPListViewController *vc3;
@property (nonatomic, strong) GPListViewController *vc4;
@property (nonatomic, strong) GPListViewController *vc5;
@property (nonatomic, strong) GPListViewController *vc6;
@end
