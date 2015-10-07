//
//  UIView+LoadFromNib.h
//  LoadFromNibProject
//
//  Created by Ersen Tekin on 07/10/15.
//  Copyright © 2015 Ersen Tekin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LoadFromNib)

+ (id) loadFromNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)bundle filesOwner:(id)filesOwner;

// Uses filesOwner = nil
+ (id) loadFromNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)bundle;

// Uses bundle = [NSBundle mainBundle] and filesOwner = nil
+ (id) loadFromNibName: (NSString *)nibNameOrNil;

@end
