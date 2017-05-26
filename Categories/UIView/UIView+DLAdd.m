//
//  UIView+DLAdd.m
//  Pods
//
//  Created by famulei on 23/05/2017.
//
//

#import "UIView+DLAdd.h"

@implementation UIView (DLAdd)

+ (instancetype)dl_xibView
{
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil].firstObject;
}


@end
