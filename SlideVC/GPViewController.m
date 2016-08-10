//
//  GPViewController.m
//  SlideVC
//
//  Created by cherish on 16/2/25.
//  Copyright © 2016年 Gao_Panpan. All rights reserved.
//

#import "GPViewController.h"

@interface GPViewController ()<GPSwitchViewDelegate>

@end

@implementation GPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//    }
    self.navigationController.navigationBar.translucent = NO;
    self.title = @"滑动切换视图";
    self.slideSwitchView.switchViewDelegate = self;
    self.slideSwitchView.tabItemNormalColor = [GPSwitchView colorFromHexRGB:@"868686"];
    self.slideSwitchView.tabItemSelectedColor = [GPSwitchView colorFromHexRGB:@"279ED1"];
    self.slideSwitchView.shadowImage = [[UIImage imageNamed:@"backgroundSelected"]
                                        stretchableImageWithLeftCapWidth:59.0f topCapHeight:0.0f];
    
    
    self.vc1 = [[GPListViewController alloc] init];
    self.vc1.title = @"零食";
    
    self.vc2 = [[GPListViewController alloc] init];
    self.vc2.title = @"饮料";
    
    self.vc3 = [[GPListViewController alloc] init];
    self.vc3.title = @"新鲜水果";
    
    self.vc4 = [[GPListViewController alloc] init];
    self.vc4.title = @"时令蔬菜";
    
    self.vc5 = [[GPListViewController alloc] init];
    self.vc5.title = @"日配冷藏";
    
    self.vc6 = [[GPListViewController alloc] init];
    self.vc6.title = @"日用百货";
    
    UIButton *rightSideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightSideButton setImage:[UIImage imageNamed:@"cme_right"] forState:UIControlStateNormal];
    [rightSideButton setImage:[UIImage imageNamed:@"cme_right"]  forState:UIControlStateHighlighted];
    rightSideButton.frame = CGRectMake(0, 0, 20.0f, 44.0f);
    rightSideButton.userInteractionEnabled = NO;
    self.slideSwitchView.rigthSideButton = rightSideButton;
    
    [self.slideSwitchView buildUI];
}

#pragma mark - 滑动tab视图代理方法

- (NSUInteger)numberOfTab:(GPSwitchView *)view
{
    return 6;
}

- (UIViewController *)slideSwitchView:(GPSwitchView *)view viewOfTab:(NSUInteger)number
{
    if (number == 0) {
        return self.vc1;
    } else if (number == 1) {
        return self.vc2;
    } else if (number == 2) {
        return self.vc3;
    } else if (number == 3) {
        return self.vc4;
    } else if (number == 4) {
        return self.vc5;
    } else if (number == 5) {
        return self.vc6;
    } else {
        return nil;
    }
}

//- (void)slideSwitchView:(GPSwitchView *)view panLeftEdge:(UIPanGestureRecognizer *)panParam
//{
//    SUNViewController *drawerController = (SUNViewController *)self.navigationController.mm_drawerController;
//    [drawerController panGestureCallback:panParam];
//}

- (void)slideSwitchView:(GPSwitchView *)view didselectTab:(NSUInteger)number
{
    GPListViewController *vc = nil;
    if (number == 0) {
        vc = self.vc1;
    } else if (number == 1) {
        vc = self.vc2;
    } else if (number == 2) {
        vc = self.vc3;
    } else if (number == 3) {
        vc = self.vc4;
    } else if (number == 4) {
        vc = self.vc5;
    } else if (number == 5) {
        vc = self.vc6;
    }
    [vc viewDidCurrentView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
