//
//  NSString+DLAdd.m
//  Pods
//
//  Created by famulei on 26/05/2017.
//
//

#import "NSString+DLAdd.h"

@implementation NSString (DLAdd)

- (UIImage *)dl_image
{
    return [UIImage imageNamed:self];
}

- (NSURL *)dl_url
{
    return [NSURL URLWithString:self];
}


@end
