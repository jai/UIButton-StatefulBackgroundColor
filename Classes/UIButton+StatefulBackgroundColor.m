//
//  UIButton+StatefulBackgroundColor.m
//  Zodio
//
//  Created by Jai Govindani on 2/10/14.
//
//

#import "UIButton+StatefulBackgroundColor.h"

@implementation UIButton (StatefulBackgroundColor)

- (void)setBackgroundColor:(UIColor*)color forState:(UIControlState)state {
    UIView *backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    backgroundView.backgroundColor = color;
    
    UIGraphicsBeginImageContext(self.bounds.size);
    [backgroundView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *extractedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self setImage:extractedImage forState:state];
    
    backgroundView = nil;
    extractedImage = nil;
}

- (void)setBackgroundColor:(UIColor *)color image:(UIImage *)image forState:(UIControlState)state {
    UIView *backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    backgroundView.backgroundColor = color;
    
    if (image) {
        UIImageView *buttonImageView = [[UIImageView alloc] initWithImage:image];
        buttonImageView.center = backgroundView.center;
        [backgroundView addSubview:buttonImageView];
    }
    
    UIGraphicsBeginImageContext(self.bounds.size);
    [backgroundView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *extractedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self setImage:extractedImage forState:state];
    
    backgroundView = nil;
    extractedImage = nil;
}

@end
