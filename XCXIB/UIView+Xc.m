//
//  UIView+HD.m
//  djBI
//
//  Created by XiaoCheng on 7/24/19.
//  Copyright © 2019 赵思集团. All rights reserved.
//

#import "UIView+Xc.h"
#import <objc/runtime.h>

@implementation UIView (Xc)

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = (cornerRadius > 0);
}

- (BOOL)avatarCorner{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue] > 0;
}

- (void)setAvatarCorner:(BOOL)corner{
    if (corner){
        self.layer.cornerRadius = CGRectGetWidth(self.frame)/2;
        self.layer.masksToBounds = corner;
    }
}

- (CGFloat)borderWidth{
    return [objc_getAssociatedObject(self, @selector(borderWidth)) floatValue];
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = (borderWidth > 0);
}


- (UIColor *)borderColor{
    return objc_getAssociatedObject(self, @selector(borderColor));
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}


+ (__kindof UIView *)XcLoadNibView{
    NSString *className = NSStringFromClass([self class]);
    return [[[UINib nibWithNibName:className bundle:nil] instantiateWithOwner:self options:nil] lastObject];
}


-(void)XcViewSetCornerRadius:(CGFloat)radius{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:radius];
}
-(void)XcSetViewCircleWithBorderWidth:(CGFloat) width andColor:(UIColor *)borColor{
    [self XcViewSetCornerRadius:(self.frame.size.height/2)];
    self.layer.borderWidth=width;
    self.layer.borderColor=[borColor CGColor];
}

@end
