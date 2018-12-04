//
//  AnimationLabelView.m
//  AnimationLabelPAOMADENG
//
//  Created by zk on 2018/12/4.
//  Copyright © 2018年 zk. All rights reserved.
//

#import "AnimationLabelView.h"

@interface AnimationLabelView ()

@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *backGroundColor;
@property (nonatomic) CGFloat speed;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UILabel *animationLabel;

@end

@implementation AnimationLabelView

- (id)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor backGroundColor:(UIColor *)backGroundColor speed:(CGFloat)speed {
    self = [super initWithFrame:frame];
    if (self) {
        self.text = text;
        self.textColor = textColor;
        self.backGroundColor = backGroundColor;
        self.speed = speed;
        [self createUI];
    }
    return self;
}

- (void)createUI {
    self.animationLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.animationLabel.textColor = self.textColor;
    self.animationLabel.backgroundColor = self.backgroundColor;
    self.animationLabel.text = self.text;
    [self.animationLabel sizeToFit];
    [self addSubview:self.animationLabel];
    
    //给bgview添加一个layer蒙层
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    self.layer.mask = maskLayer;
    
    [self addAnimationLabel];
}

//给label添加滚动动画
- (void)addAnimationLabel {
    [self.animationLabel.layer removeAllAnimations];
    CGFloat space = self.animationLabel.frame.size.width - self.frame.size.width;//label设置了sizetofit 宽度自适应
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath = @"transform.translation.x";
    keyFrameAnimation.values = @[@(0), @(-space), @(0)];
    keyFrameAnimation.repeatCount = MAXFLOAT;
    keyFrameAnimation.duration = self.speed * self.animationLabel.text.length;
    keyFrameAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithControlPoints:0 :0 :0.5 :0.5]];
    [self.animationLabel.layer addAnimation:keyFrameAnimation forKey:nil];
}

@end
