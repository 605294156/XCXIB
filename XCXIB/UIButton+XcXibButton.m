//
//  UIButton+XcXibButton.m
//  test
//
//  Created by XiaoCheng on 03/07/2019.
//  Copyright © 2019 赵思集团. All rights reserved.
//

#import "UIButton+XcXibButton.h"
#import <objc/runtime.h>

@implementation UIButton (XcXibButton)
@dynamic colorDisabled;
@dynamic colorNormal;
- (UIImage*) createImageWithColor:(UIColor *) color cornerRadius:(CGFloat) cornerRadius{
    //图片尺寸
    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    //填充画笔
    UIGraphicsBeginImageContext(rect.size);
    //根据所传颜色绘制
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    //显示区域
    CGContextFillRect(context, rect);
    // 得到图片信息
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    //消除画笔
    UIGraphicsEndImageContext();
    
    // 开始一个Image的上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 1.0);
    // 添加圆角
    [[UIBezierPath bezierPathWithRoundedRect:rect
                                cornerRadius:cornerRadius] addClip];
    // 绘制图片
    [image drawInRect:rect];
    // 接受绘制成功的图片
    UIImage *image1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image1;
}
- (void) setColorNormal:(UIColor *)colorNormal{
    [self setBackgroundImage:[self createImageWithColor:colorNormal cornerRadius:self.layer.cornerRadius] forState:UIControlStateNormal];
}

- (void) setColorDisabled:(UIColor *)colorDisabled{
    [self setBackgroundImage:[self createImageWithColor:colorDisabled cornerRadius:self.layer.cornerRadius] forState:UIControlStateDisabled];
}

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue];
}

@end
