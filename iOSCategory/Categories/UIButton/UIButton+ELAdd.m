//
//  UIButton+DLAdd.m
//  Pods
//
//  Created by famulei on 23/05/2017.
//
//

#import "UIButton+ELAdd.h"

@implementation UIButton (ELAdd)

- (void)el_imageRightAndTitleLeft:(CGFloat)spacing
{
    [self sizeToFit];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - self.imageView.frame.size.width, 0, self.imageView.frame.size.width);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + spacing, 0, - self.titleLabel.frame.size.width - spacing);
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width + spacing * 2, self.frame.size.height);
}


@end
