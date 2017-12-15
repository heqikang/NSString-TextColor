//
//  NSMutableAttributedString+TextColor.m
//  TextColor
//
//  Created by 点点 on 2017/12/15.
//  Copyright © 2017年 DD. All rights reserved.
//

#import "NSMutableAttributedString+TextColor.h"

@implementation NSMutableAttributedString (TextColor)
//根据索引范围设置字体颜色
+ (void)setTextColorWithString:(NSMutableAttributedString *)str withFontSize:(id)font withColor:(UIColor *)color withBackgroundColor:(UIColor *)bgColor withRange:(NSRange)range
{
    
    //设置字号
    [str addAttribute:NSFontAttributeName value:font range:range];
    //设置文字颜色
    if (color) {
        [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
    if (bgColor) {
        [str addAttribute:NSBackgroundColorAttributeName value:bgColor range:range];
    }
}

//根据自定义文字字体颜色
+ (void)setCustomTextColorWithString:(NSMutableAttributedString *)str withFontSize:(id)font withColor:(UIColor *)color withBackgroundColor:(UIColor *)bgColor withCustomString:(NSString *)customString
{
    NSRange range = [[str string] rangeOfString:customString];
    //设置字号
    [str addAttribute:NSFontAttributeName value:font range:range];
    //设置文字颜色
    if (color) {
        [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
    if (bgColor) {
        [str addAttribute:NSBackgroundColorAttributeName value:bgColor range:range];
    }
}

+ (void)setCustomTextColorWithString:(NSMutableAttributedString *)str withFontSizeArray:(NSArray *)fontArray withColorArray:(NSArray *)colorArray withBackgroundColorArray:(NSArray *)bgColorArray withCustomStringArray:(NSArray *)customStringArray
{
    for (int i = 0; i < customStringArray.count; i++) {
        NSRange range = [[str string] rangeOfString:customStringArray[i]];
        //设置字号
        [str addAttribute:NSFontAttributeName value:fontArray[i] range:range];
        
        //设置文字颜色
        if (colorArray[i]) {
            [str addAttribute:NSForegroundColorAttributeName value:colorArray[i] range:range];
        }
        if (bgColorArray[i]) {
            [str addAttribute:NSBackgroundColorAttributeName value:bgColorArray[i] range:range];
        }
    }
}

//自定义设置字体颜色
+ (void)setTextColorWithString:(NSMutableAttributedString *)str withRange:(NSRange)range withRangeFontSize:(id)rangeFont withRangeColor:(UIColor *)rangeColor withRangeBgColor:(UIColor *)rangeBgColor withCustomSting:(NSString *)customString withCustomStringFontSize:(id)customStringFont withCustomStringColor:(UIColor *)customStringColor withCustomStringBgColor:(UIColor *)customStringBgColor withFirstColor:(BOOL)firstColor
{
    //设置指定下标的字体字号
    [str addAttribute:NSFontAttributeName value:rangeFont range:range];
    //设置指定下标的字体文字颜色
    if (rangeColor) {
        [str addAttribute:NSForegroundColorAttributeName value:rangeColor range:range];
    }
    if (rangeBgColor) {
        [str addAttribute:NSBackgroundColorAttributeName value:rangeBgColor range:range];
    }
    //    [str addAttribute:NSForegroundColorAttributeName value:rangeColor range:range];
    //    [str addAttribute:NSBackgroundColorAttributeName value:rangeBgColor range:range];
    // 计算自定义的文字下标范围
    NSRange customRange = [[str string] rangeOfString:customString];
    
    //设置自定义的字体字号
    [str addAttribute:NSFontAttributeName value:customStringFont range:customRange];
    //设置自定义字体文字颜色
    if (customStringColor) {
        [str addAttribute:NSForegroundColorAttributeName value:customStringColor range:range];
    }
    if (customStringBgColor) {
        [str addAttribute:NSBackgroundColorAttributeName value:customStringBgColor range:range];
    }
    //    [str addAttribute:NSForegroundColorAttributeName value:customStringColor range:customRange];
    //    [str addAttribute:NSBackgroundColorAttributeName value:customStringBgColor range:customRange];
    firstColor ? [str addAttribute:NSForegroundColorAttributeName value:rangeColor range:customRange] : [str addAttribute:NSForegroundColorAttributeName value:customStringColor range:customRange];
}
@end
