//
//  ZooManager+MemoryLeakFinder.h
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import <Zoo/ZooManager.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZooManager (MemoryLeakFinder)

// MARK: - MemoryLeakFinder
- (void)addMemoryLeakFinderPlugins;

- (void)setupMemoryLeakFinderPlugins;

@end

NS_ASSUME_NONNULL_END
