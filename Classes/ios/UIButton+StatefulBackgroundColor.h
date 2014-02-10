//
//  UIButton+StatefulBackgroundColor.h
//  Zodio
//
//  Created by Jai Govindani on 2/10/14.
//
//

#import <UIKit/UIKit.h>

@interface UIButton (StatefulBackgroundColor)

- (void)setBackgroundColor:(UIColor*)color forState:(UIControlState)state;
- (void)setBackgroundColor:(UIColor*)color image:(UIImage*)image forState:(UIControlState)state;

@end
