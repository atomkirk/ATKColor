//
//  NSColor+RGBHex.h
//  TwUI
//
//  Created by Adam Kirk on 6/1/13.
//
//

#import <Foundation/Foundation.h>
#import <TargetConditionals.h>


#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
#import <UIKit/UIKit.h>
#define ATKColor UIColor
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#else
#define ATKColor NSColor
#define RGBA(r, g, b, a) [NSColor colorWithSRGBRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#endif

#define RGB(r, g, b) RGBA(r, g, b, 1.0f)

#define RGBAHex(rgbValue, a) RGBA( \
                                    ((float)((rgbValue & 0xFF0000) >> 16)), \
                                    ((float)((rgbValue & 0xFF00) >> 8)), \
                                    ((float)(rgbValue & 0xFF)), \
                                    a \
                                )

#define RGBHex(rgbValue) RGBAHex(rgbValue, 1.0)

@interface ATKColor (RGBHex)

+ (ATKColor *)atk_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b;
+ (ATKColor *)atk_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(CGFloat)a;
+ (ATKColor *)atk_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;
+ (ATKColor *)atk_colorWithHex:(NSInteger)hex;

@end
