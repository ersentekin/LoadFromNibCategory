//
//  UIView+LoadFromNib.m
//  LoadFromNibProject
//
//  Created by Ersen Tekin on 07/10/15.
//  Copyright © 2015 Ersen Tekin. All rights reserved.
//

#import "UIView+LoadFromNib.h"

@implementation UIView (LoadFromNib)

+ (id) loadFromNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)bundle filesOwner:(id)filesOwner
{
    if (bundle == nil) {
        bundle = [NSBundle mainBundle];
    }
    if (nibNameOrNil == nil) {
        nibNameOrNil = NSStringFromClass([self class]);
    }
    if ([bundle pathForResource: nibNameOrNil ofType: @"nib"] == nil) {
        return nil;
    }
    
    NSArray *topLevelObjects = [bundle loadNibNamed: nibNameOrNil owner: filesOwner options: nil];
    for (id object in topLevelObjects) {
        if ([object isKindOfClass: [self class]]) {
            return object;
        }
    }
    return nil;
}

+ (id) loadFromNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)bundle
{
    return [self loadFromNibName: nibNameOrNil bundle: bundle filesOwner: nil];
}

+ (id) loadFromNibName: (NSString *)nibNameOrNil
{
    return [self loadFromNibName: nibNameOrNil bundle: nil filesOwner: nil];
}

@end
