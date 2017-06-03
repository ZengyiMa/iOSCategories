//
//  UIView+DLAdd.h
//  Pods
//
//  Created by famulei on 23/05/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIView (DLAdd)
+ (instancetype)dl_xibView;


@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize  size;     


@end
