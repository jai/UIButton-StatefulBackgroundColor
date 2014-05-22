//
//  ZViewController.m
//  UIButton+StatefulBackgroundColor
//
//  Created by Jai Govindani on 2/10/14.
//  Copyright (c) 2014 Zodio. All rights reserved.
//

#import "ZViewController.h"
#import "UIButton+StatefulBackgroundColor.h"

@interface ZViewController ()

@end

@implementation ZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIColor *belizeHoleBlue = [UIColor colorWithRed:41/255.0 green:128/255.0 blue:185/255.0 alpha:1.0f];
    UIColor *sunflowerYellow = [UIColor colorWithRed:241/255.0 green:196/255.0 blue:15/255.0 alpha:1.0f];

    UIImage *normalImage = [UIImage imageNamed:@"875-skull"];
    UIImage *highlightedImage = [UIImage imageNamed:@"913-skull-selected"];
    
    [self.button setImage:normalImage forState:UIControlStateNormal];
    [self.button setImage:highlightedImage forState:UIControlStateHighlighted];
    [self.button setBackgroundColor:belizeHoleBlue forState:UIControlStateNormal];
    [self.button setBackgroundColor:sunflowerYellow forState:UIControlStateNormal];
    
    self.button.backgroundColor = [UIColor clearColor];
}

- (void)viewDidAppear:(BOOL)animated {

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
