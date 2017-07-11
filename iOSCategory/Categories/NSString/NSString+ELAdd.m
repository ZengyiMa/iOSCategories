//
//  NSString+DLAdd.m
//  Pods
//
//  Created by famulei on 26/05/2017.
//
//

#import "NSString+ELAdd.h"
#import <CommonCrypto/CommonCrypto.h>
@implementation NSString (ELAdd)

- (UIImage *)el_image
{
    return [UIImage imageNamed:self];
}

- (NSURL *)el_url
{
    return [NSURL URLWithString:self];
}



- (NSString *)el_md5String {
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}


@end
