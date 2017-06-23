//
//  NSString+DLAdd.m
//  Pods
//
//  Created by famulei on 26/05/2017.
//
//

#import "NSString+ELAdd.h"

@implementation NSString (ELAdd)

- (UIImage *)el_image
{
    return [UIImage imageNamed:self];
}

- (NSURL *)el_url
{
    return [NSURL URLWithString:self];
}


@end
