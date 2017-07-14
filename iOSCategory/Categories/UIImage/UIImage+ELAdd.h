//
//  UIImage+ELAdd.h
//  Pods
//
//  Created by famulei on 12/07/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (ELAdd)

+ (UIImage *)el_jpgImageName:(NSString *)name;
+ (UIImage *)el_pngImageName:(NSString *)name;


+ (UIImage *)el_fileImageName:(NSString *)name ofType:(NSString *)type autoScale:(BOOL)autoScale;



@end
