//
//  NSMutableAttributedString+TextColor.h
//  TextColor
//
//  Created by 点点 on 2017/12/15.
//  Copyright © 2017年 DD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSMutableAttributedString (TextColor)
//根据索引范围设置字体颜色
+ (void)setTextColorWithString:(NSMutableAttributedString *)str withFontSize:(id)font withColor:(UIColor *)color withBackgroundColor:(UIColor *)bgColor withRange:(NSRange)range;

//根据自定义文字字体颜色
+ (void)setCustomTextColorWithString:(NSMutableAttributedString *)str withFontSize:(id)font withColor:(UIColor *)color withBackgroundColor:(UIColor *)bgColor withCustomString:(NSString *)customString;

+ (void)setCustomTextColorWithString:(NSMutableAttributedString *)str withFontSizeArray:(NSArray *)fontArray withColorArray:(NSArray *)colorArray withBackgroundColorArray:(NSArray *)bgColorArray withCustomStringArray:(NSArray *)customStringArray;

/*
 涉及到索引字体与自定义字体重叠,最终颜色取决于最后设置的颜色
 */
//自定义设置字体颜色
+ (void)setTextColorWithString:(NSMutableAttributedString *)str withRange:(NSRange)range withRangeFontSize:(id)rangeFont withRangeColor:(UIColor *)rangeColor withRangeBgColor:(UIColor *)rangeBgColor withCustomSting:(NSString *)customString withCustomStringFontSize:(id)customStringFont withCustomStringColor:(UIColor *)customStringColor withCustomStringBgColor:(UIColor *)customStringBgColor withFirstColor:(BOOL)firstColor;
@end
