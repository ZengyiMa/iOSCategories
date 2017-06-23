//
//  NSBundle+DLAdd.m
//  Pods
//
//  Created by famulei on 04/05/2017.
//
//

#import "NSBundle+ELAdd.h"

@implementation NSBundle (ELAdd)
- (NSArray *)el_appIconNames
{
    NSDictionary *infoDict = [self infoDictionary];
    NSArray *iconsArr = infoDict[@"CFBundleIcons"][@"CFBundlePrimaryIcon"][@"CFBundleIconFiles"];
    return iconsArr;
}
@end
