//
//  NSBundle+DLAdd.m
//  Pods
//
//  Created by famulei on 04/05/2017.
//
//

#import "NSBundle+DLAdd.h"

@implementation NSBundle (DLAdd)
- (NSArray *)dl_appIconNames
{
    NSDictionary *infoDict = [self infoDictionary];
    NSArray *iconsArr = infoDict[@"CFBundleIcons"][@"CFBundlePrimaryIcon"][@"CFBundleIconFiles"];
    return iconsArr;
}
@end
