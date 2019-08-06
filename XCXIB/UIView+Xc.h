//
//  UIView+HD.h
//  djBI
//
//  Created by XiaoCheng on 7/24/16.
//  Copyright © 2019 赵思集团. All rights reserved.
//

#import <UIKit/UIKit.h>
//IB_DESIGNABLE
@interface UIView (Xc)

@property (nonatomic) IBInspectable CGFloat cornerRadius;

/** 头像圆角 */
@property (nonatomic) IBInspectable BOOL avatarCorner;

/** 边框 */
@property (nonatomic) IBInspectable CGFloat borderWidth;

/** 边框颜色*/
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

+ (__kindof UIView *)XcLoadNibView;
- (void)XcSetViewCircleWithBorderWidth:(CGFloat) width andColor:(UIColor *)borColor;
- (void)XcViewSetCornerRadius:(CGFloat)radius;

@end
