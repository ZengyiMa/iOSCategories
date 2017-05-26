//
//  UIButton+DLAdd.m
//  Pods
//
//  Created by famulei on 23/05/2017.
//
//

#import "UIButton+DLAdd.h"

@implementation UIButton (DLAdd)

- (void)dl_imageRightAndTitleLeft:(CGFloat)spacing
{
    [self sizeToFit];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - self.imageView.frame.size.width, 0, self.imageView.frame.size.width);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + spacing, 0, - self.titleLabel.frame.size.width - spacing);
}


@end
