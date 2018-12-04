//
//  ViewController.m
//  AnimationLabelPAOMADENG
//
//  Created by zk on 2018/12/4.
//  Copyright © 2018年 zk. All rights reserved.
//

#import "ViewController.h"
#import "AnimationLabelView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"a");
    AnimationLabelView *animationLabelView = [[AnimationLabelView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200) text:@"滚动播放Label封装,滚动播放Label封装,滚动播放Label封装,滚动播放Label封装" textColor:[UIColor blackColor] backGroundColor:[UIColor lightGrayColor] speed:0.3];
    [self.view addSubview:animationLabelView];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
