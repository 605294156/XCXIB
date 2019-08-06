//
//  UIButton+XcXibButton.h
//  test
//
//  Created by XiaoCheng on 03/07/2019.
//  Copyright © 2019 赵思集团 All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (XcXibButton)
@property (nonatomic,strong) IBInspectable UIColor *colorNormal;
@property (nonatomic,strong) IBInspectable UIColor *colorDisabled;
@end

NS_ASSUME_NONNULL_END
