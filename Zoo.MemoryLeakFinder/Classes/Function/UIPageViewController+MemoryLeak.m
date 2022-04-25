//
//  UIPageViewController+MemoryLeak.m
//  MLeaksFinder
//
//  Created by lZackx on 2022/4/14.  Copyright © 2015 zeposhe. All rights reserved.
//

#import "UIPageViewController+MemoryLeak.h"
#import "NSObject+MemoryLeak.h"

#if _INTERNAL_MLF_ENABLED

@implementation UIPageViewController (MemoryLeak)

- (BOOL)willDealloc {
    if (![super willDealloc]) {
        return NO;
    }
    
    [self willReleaseChildren:self.viewControllers];
    
    return YES;
}

@end

#endif
