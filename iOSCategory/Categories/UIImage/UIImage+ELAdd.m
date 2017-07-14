//
//  UIImage+ELAdd.m
//  Pods
//
//  Created by famulei on 12/07/2017.
//
//

#import "UIImage+ELAdd.h"

@implementation UIImage (ELAdd)


+ (UIImage *)el_jpgImageName:(NSString *)name
{
    return [self el_fileImageName:name ofType:@"jpg" autoScale:YES];
}

+ (UIImage *)el_pngImageName:(NSString *)name
{
    return [self el_fileImageName:name ofType:@"png" autoScale:YES];
}

+ (UIImage *)el_fileImageName:(NSString *)name ofType:(NSString *)type autoScale:(BOOL)autoScale
{
    NSString *filePath = nil;
    if (autoScale) {
        NSArray *scales = nil;
        if ([UIScreen mainScreen].scale == 2) {
            scales = @[@"@2x", @"@3x", @"@1x", @""];
        } else if ([UIScreen mainScreen].scale == 3) {
            scales = @[@"@3x", @"@2x", @"@1x", @""];
        }
        
        for (NSString *scaleString in scales) {
            filePath = [[NSBundle mainBundle]pathForResource:[name stringByAppendingString:scaleString] ofType:type];
            if (filePath) {
                break;
            }
        }
        
        
    } else {
       filePath = [[NSBundle mainBundle]pathForResource:name ofType:type];
    }
    
    
    
    return [UIImage imageWithContentsOfFile:filePath];
}


@end
