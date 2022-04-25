//
//  ZooCacheManager.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooCacheManager+MemoryLeakFinder.h"
#import <Zoo/ZooManager.h>
#import <Zoo/ZooDefine.h>
#import <objc/runtime.h>


static NSString * const kZooMemoryLeakKey = @"zoo_memory_leak_key";
static NSString * const kZooMemoryLeakAlertKey = @"zoo_memory_leak_alert_key";

@implementation ZooCacheManager (MemoryLeakFinder)


- (BOOL)memoryLeakOn {
    NSNumber *number = objc_getAssociatedObject(self, _cmd);
    BOOL on = [number boolValue];
    return on;
}

- (void)setMemoryLeakOn:(BOOL)memoryLeakOn {
    NSNumber *number = [NSNumber numberWithBool:memoryLeakOn];
    objc_setAssociatedObject(self, @selector(memoryLeakOn), number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)firstReadMemoryLeakOn {
    NSNumber *number = objc_getAssociatedObject(self, _cmd);
    BOOL on = [number boolValue];
    return on;
}

- (void)setFirstReadMemoryLeakOn:(BOOL)firstReadMemoryLeakOn {
    NSNumber *number = [NSNumber numberWithBool:firstReadMemoryLeakOn];
    objc_setAssociatedObject(self, @selector(firstReadMemoryLeakOn), number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// 内存泄漏开关
- (void)saveMemoryLeak:(BOOL)on{
    [[NSUserDefaults standardUserDefaults] setBool:on forKey:kZooMemoryLeakKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (BOOL)memoryLeak{
    if (self.firstReadMemoryLeakOn) {
        return self.memoryLeakOn;
    }
    self.firstReadMemoryLeakOn = YES;
    self.memoryLeakOn = [[NSUserDefaults standardUserDefaults] boolForKey:kZooMemoryLeakKey];
    return self.memoryLeakOn;
}

// 内存泄漏弹框开关
- (void)saveMemoryLeakAlert:(BOOL)on{
    [[NSUserDefaults standardUserDefaults] setBool:on forKey:kZooMemoryLeakAlertKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (BOOL)memoryLeakAlert{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kZooMemoryLeakAlertKey];
}

@end
