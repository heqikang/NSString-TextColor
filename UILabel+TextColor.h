//
//  UILabel+TextColor.h
//  QKText
//
//  Created by 点点 on 2017/11/3.
//  Copyright © 2017年 DD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (TextColor)

//根据索引范围设置字体颜色
- (void)setTextColorWithLabel:(UILabel *)label withFontSize:(id)font withColor:(UIColor *)color withRange:(NSRange)range;

//根据自定义文字字体颜色
- (void)setTextColorWithLabel:(UILabel *)label withFontSize:(id)font withColor:(UIColor *)color withCustomString:(NSString *)customString;


/*
 涉及到索引字体与自定义字体重叠,最终颜色取决于最后设置的颜色
 */
//自定义设置字体颜色
-(void)setTextColorWithLabel:(UILabel *)label withRange:(NSRange)range withRangeFontSize:(id)rangeFont withRangeColor:(UIColor *)rangeColor withCustomSting:(NSString *)customString withCustomStringFontSize:(id)customStringFont withCustomStringColor:(UIColor *)customStringColor withFirstColor:(BOOL)firstColor;


@end
