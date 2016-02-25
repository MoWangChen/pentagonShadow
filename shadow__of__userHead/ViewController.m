//
//  ViewController.m
//  shadow__of__userHead
//
//  Created by 谢鹏翔 on 15/12/22.
//  Copyright © 2015年 谢鹏翔. All rights reserved.
//

#import "ViewController.h"
#import "UIBezierPath+Pentagon.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *headerImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-100, self.view.center.y-100, 200, 200)];
//    backView.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:backView];
    
    
    _headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.center.x-40, self.view.center.y-40, 80, 80)];
    _headerImageView.backgroundColor = [UIColor redColor];
//    _headerImageView.image = [UIImage imageNamed:@"dummy_banner_kitchen"];
    [self.view addSubview:_headerImageView];
    
    
    
    
    UIBezierPath * path = [UIBezierPath getPentagonPath];
    
    
    CAShapeLayer * shapLayer = [CAShapeLayer layer];
    shapLayer.lineWidth = 1;
    shapLayer.strokeColor = [UIColor whiteColor].CGColor;
    shapLayer.path = path.CGPath;
    _headerImageView.layer.mask = shapLayer;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
