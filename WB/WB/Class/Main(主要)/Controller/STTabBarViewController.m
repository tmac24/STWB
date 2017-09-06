//
//  STTabBarViewController.m
//  WB
//
//  Created by 孙涛 on 2017/9/6.
//  Copyright © 2017年 孙涛. All rights reserved.
//

#import "STTabBarViewController.h"

#import "STNavigationViewController.h"
#import "STDiscoverViewController.h"
#import "STHomeViewController.h"
#import "STMessageViewController.h"
#import "STProfileViewController.h"

@interface STTabBarViewController ()

@end

@implementation STTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 添加子控制器
    STHomeViewController *home = [[STHomeViewController alloc] init];
    [self addOneChlildVc:home title:@"首页" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    STMessageViewController *message = [[STMessageViewController alloc] init];
    [self addOneChlildVc:message title:@"消息" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    
    STDiscoverViewController *discover = [[STDiscoverViewController alloc] init];
    [self addOneChlildVc:discover title:@"发现" imageName:@"tabbar_discover" selectedImageName:@"tabbar_discover_selected"];
    
    STProfileViewController *profile = [[STProfileViewController alloc] init];
    [self addOneChlildVc:profile title:@"我" imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {

    childVc.view.backgroundColor = STRandomColor;
    // 设置标题
    // 相当于同时设置了tabBarItem.title和navigationItem.title
    childVc.title = title;
    
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    // 设置选中的图标
    childVc.tabBarItem.selectedImage = [UIImage imageNamed:imageName];
    
    // 添加为tabbar控制器的子控制器
    STNavigationViewController *nav = [[STNavigationViewController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
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
