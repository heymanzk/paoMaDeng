//
//  AnimationLabelView.h
//  AnimationLabelPAOMADENG
//
//  Created by zk on 2018/12/4.
//  Copyright © 2018年 zk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnimationLabelView : UIView

- (id)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor backGroundColor:(UIColor *)backGroundColor speed:(CGFloat)speed;

@end

NS_ASSUME_NONNULL_END
