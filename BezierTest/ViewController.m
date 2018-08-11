//
//  ViewController.m
//  BezierTest
//
//  Created by lionking on 2018/8/11.
//  Copyright © 2018年 lionKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *test2ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *TestImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //图片2圆形
    self.test2ImageView.layer.cornerRadius =  50;
    self.test2ImageView.layer.masksToBounds = YES;
    //画贝塞尔曲线
    UIBezierPath *path = [UIBezierPath bezierPath];
    //第一个圆弧
    [path addArcWithCenter:CGPointMake(0, 50) radius:50 startAngle:M_PI/3 endAngle:M_PI*5/3 clockwise:NO];
    //第二个圆弧
    [path addArcWithCenter:CGPointMake(50, 50) radius:50 startAngle:M_PI*4/3 endAngle:M_PI*2/3 clockwise:YES];
    //新layer
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.path = path.CGPath;
    //用layer盖住图片
    self.TestImageView.layer.mask = shapeLayer;
}


@end
