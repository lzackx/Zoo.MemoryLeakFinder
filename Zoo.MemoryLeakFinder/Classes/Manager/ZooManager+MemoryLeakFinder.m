//
//  ZooManager+MemoryLeakFinder.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooManager+MemoryLeakFinder.h"
#import "ZooCacheManager+MemoryLeakFinder.h"

#import <Zoo/Zooi18NUtil.h>


@implementation ZooManager (MemoryLeakFinder)

#pragma mark - MemoryLeakFinder
- (void)addMemoryLeakFinderPlugins {
    [self addPluginWithModel: [self appMemoryLeakFinderPluginModel]];
}

- (void)setupMemoryLeakFinderPlugins {
    
}

#pragma mark - Model

- (ZooManagerPluginTypeModel *)appMemoryLeakFinderPluginModel {
    ZooManagerPluginTypeModel *model = [ZooManagerPluginTypeModel new];
    model.title = ZooLocalizedString(@"Memory Leak");
    model.desc = ZooLocalizedString(@"Memory Leak");
    model.icon = @"zoo_memory_leak";
    model.pluginName = @"ZooMLeaksFinderPlugin";
    model.atModule = ZooLocalizedString(@"Performance");
    return model;
}

@end
