//
//  UIView+DLAdd.h
//  Pods
//
//  Created by famulei on 23/05/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIView (DLAdd)
/// 从 xib 读取 View
+ (instancetype)dl_xibView;

/// frame 的简写
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

// UIView 的截图
- (UIImage *)dl_snapshotImage;
- (UIImage *)dl_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;



@end
