//
//  ViewController.m
//  PhotoAnimation
//
//  Created by 尤翠翠 on 16/4/14.
//  Copyright © 2016年 YiZhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray * arr = [NSMutableArray arrayWithCapacity:1];
    for (int i = 1; i <= 7;i++ ) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%d" , i]];//6201e6c6jw1e84jvd5rbzg20c808jgm5－5（被拖移）
        [arr addObject:image];
    }
    
    UIImageView * aView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 355, self.view.frame.size.width, 248)];
    [self.view addSubview:aView];
    aView.animationImages = arr;
    aView.animationDuration = 2;
    [aView startAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
