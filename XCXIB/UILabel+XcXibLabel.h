//
//  UILabel+XcXibLabel.h
//  test
//
//  Created by XiaoCheng on 04/07/2019.
//  Copyright © 2019 bub chain. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, XcXibLabelType){
    XcXibLabelType_1 = 1,
    XcXibLabelType_2,
    XcXibLabelType_3,
    XcXibLabelType_4,
};

IB_DESIGNABLE
@interface UILabel (XcXibLabel)
@property (nonatomic,assign) IBInspectable XcXibLabelType textType;
@property (nonatomic,strong) IBInspectable NSString *xc_text1;
@property (nonatomic,strong) IBInspectable NSString *xc_text2;
@property (nonatomic,strong) IBInspectable NSString *xc_text3;
@property (nonatomic,strong) IBInspectable NSString *xc_text4;
@end

NS_ASSUME_NONNULL_END
