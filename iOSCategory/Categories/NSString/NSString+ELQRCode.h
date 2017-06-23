//
//  NSString+DLQRCode.h
//  TestHook
//
//  Created by famulei on 27/03/2017.
//  Copyright © 2017 famulei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (DLQRCode)


/**
 从字符串中生成相应的二维码

 @param size 二维码的尺寸
 @param logoImage 中间 logo 的图片
 @param logoSize logo 的尺寸
 @return 生成好的图片
 */
- (UIImage *)el_qrcodeWithSize:(CGSize)size logoImage:(UIImage *)logoImage logoSize:(CGSize)logoSize;
@end
