//
//  UILabel+XcXibLabel.m
//  test
//
//  Created by XiaoCheng on 04/07/2019.
//  Copyright © 2019 赵思集团. All rights reserved.
//

#import "UILabel+XcXibLabel.h"
#import <objc/runtime.h>

static char key_text1;
static char key_text2;
static char key_text3;
static char key_text4;
static char key_type;
@implementation UILabel (XcXibLabel)
@dynamic xc_text1,xc_text2,xc_text3,xc_text4,textType;

- (void) setXc_text1:(NSString *)xc_text1{objc_setAssociatedObject(self, &key_text1, xc_text1, OBJC_ASSOCIATION_RETAIN_NONATOMIC);}
- (void) setXc_text2:(NSString *)xc_text2{objc_setAssociatedObject(self, &key_text2, xc_text2, OBJC_ASSOCIATION_RETAIN_NONATOMIC);}
- (void) setXc_text3:(NSString *)xc_text3{objc_setAssociatedObject(self, &key_text3, xc_text3, OBJC_ASSOCIATION_RETAIN_NONATOMIC);}
- (void) setXc_text4:(NSString *)xc_text4{objc_setAssociatedObject(self, &key_text4, xc_text4, OBJC_ASSOCIATION_RETAIN_NONATOMIC);}

- (NSString *) xc_text1{return objc_getAssociatedObject(self, &key_text1);}
- (NSString *) xc_text2{return objc_getAssociatedObject(self, &key_text2);}
- (NSString *) xc_text3{return objc_getAssociatedObject(self, &key_text3);}
- (NSString *) xc_text4{return objc_getAssociatedObject(self, &key_text4);}

- (void) setTextType:(XcXibLabelType)textType{
    switch (textType) {
        case 1:self.text = self.xc_text1;break;
        case 2:self.text = self.xc_text2;break;
        case 3:self.text = self.xc_text3;break;
        case 4:self.text = self.xc_text4;break;
        default:break;
    }
    objc_setAssociatedObject(self, &key_type, @(textType), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (XcXibLabelType) textType{
    NSNumber *num = objc_getAssociatedObject(self, &key_type);
    return num ? num.integerValue : 0;
}

@end
