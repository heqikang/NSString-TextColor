//
//  UILabel+TextColor.m
//  QKText
//
//  Created by 点点 on 2017/11/3.
//  Copyright © 2017年 DD. All rights reserved.
//

#import "UILabel+TextColor.h"

@implementation UILabel (TextColor)


//根据索引范围设置字体颜色
- (void)setTextColorWithLabel:(UILabel *)label withFontSize:(id)font withColor:(UIColor *)color withRange:(NSRange)range
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    
    //设置字号
    [str addAttribute:NSFontAttributeName value:font range:range];
    //设置文字颜色
    [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    
    label.attributedText = str;
}

//根据自定义文字字体颜色
- (void)setTextColorWithLabel:(UILabel *)label withFontSize:(id)font withColor:(UIColor *)color withCustomString:(NSString *)customString
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    
    NSRange range = [label.text rangeOfString:customString];
    //设置字号
    [str addAttribute:NSFontAttributeName value:font range:range];
    //设置文字颜色
    [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    
    label.attributedText = str;
}

//自定义设置字体颜色
-(void)setTextColorWithLabel:(UILabel *)label withRange:(NSRange)range withRangeFontSize:(id)rangeFont withRangeColor:(UIColor *)rangeColor withCustomSting:(NSString *)customString withCustomStringFontSize:(id)customStringFont withCustomStringColor:(UIColor *)customStringColor withFirstColor:(BOOL)firstColor
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    
    //设置指定下标的字体字号
    [str addAttribute:NSFontAttributeName value:rangeFont range:range];
    //设置指定下标的字体文字颜色
    [str addAttribute:NSForegroundColorAttributeName value:rangeColor range:range];
    
    // 计算自定义的文字下标范围
    NSRange customRange = [label.text rangeOfString:customString];
    
    //设置自定义的字体字号
    [str addAttribute:NSFontAttributeName value:customStringFont range:customRange];
    //设置自定义字体文字颜色
    [str addAttribute:NSForegroundColorAttributeName value:customStringColor range:customRange];
    
    firstColor ? [str addAttribute:NSForegroundColorAttributeName value:rangeColor range:customRange] : [str addAttribute:NSForegroundColorAttributeName value:customStringColor range:customRange];
    
    label.attributedText = str;
}

@end
