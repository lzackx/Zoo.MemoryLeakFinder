//
//  ZooCacheManager.h
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import <Foundation/Foundation.h>
#import <Zoo/ZooCacheManager.h>


@interface ZooCacheManager (MemoryLeakFinder)

@property (nonatomic, assign) BOOL memoryLeakOn;
@property (nonatomic, assign) BOOL firstReadMemoryLeakOn;

- (void)saveMemoryLeak:(BOOL)on;
- (BOOL)memoryLeak;

- (void)saveMemoryLeakAlert:(BOOL)on;
- (BOOL)memoryLeakAlert;

@end
