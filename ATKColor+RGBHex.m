//
//  NSColor+RGBHex.m
//  TwUI
//
//  Created by Adam Kirk on 6/1/13.
//
//

#import "ATKColor+RGBHex.h"


@implementation ATKColor (RGBHex)


#pragma mark - RGB

+ (ATKColor *)atk_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b
{
    return [self atk_colorWithR:r G:g B:b A:1.0f];
}

+ (ATKColor *)atk_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(CGFloat)a
{
#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    return [ATKColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
#else
    return [ATKColor colorWithCalibratedRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
#endif
}


#pragma mark - HEX

+ (ATKColor *)atk_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha
{
    NSInteger red   = (hex & 0xFF0000) >> 16;
    NSInteger green = (hex & 0xFF00)   >> 8;
    NSInteger blue  = (hex & 0xFF);
    return [self atk_colorWithR:red G:green B:blue A:alpha];
}

+ (ATKColor *)atk_colorWithHex:(NSInteger)hex
{
    return [self atk_colorWithHex:hex alpha:1.0f];
}

@end
