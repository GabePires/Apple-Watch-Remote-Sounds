//
//  NSObject+soundMethods.m
//  minebox2
//
//  Created by Pires on 1/4/15.
//  Copyright (c) 2015 perpetualApps. All rights reserved.
//

#import "SoundMethods.h"
#import "SoundManager.h"

@implementation SoundMethods

//Singleton pattern. May be useful for a lot of sounds.
+ (id)sharedManager {
    static SoundMethods *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}
- (id)init {
    if (self = [super init]) {
        [[SoundManager sharedManager]prepareToPlayWithSound:@"quack.caf"];
    }
    return self;
}
-(void)playQuack{
    [[SoundManager sharedManager] playSound:@"quack.caf" looping:NO];
}
@end
