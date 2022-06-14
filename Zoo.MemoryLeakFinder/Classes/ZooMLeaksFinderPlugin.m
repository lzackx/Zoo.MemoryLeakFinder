//
//  ZooMLeaksFinderPlugin.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooMLeaksFinderPlugin.h"
#import <Zoo/ZooHomeWindow.h>
#import "ZooMLeaksFinderViewController.h"

@implementation ZooMLeaksFinderPlugin

- (void)pluginDidLoad{
    ZooMLeaksFinderViewController *vc = [[ZooMLeaksFinderViewController alloc] init];
    [ZooHomeWindow openPlugin:vc];
}

@end
