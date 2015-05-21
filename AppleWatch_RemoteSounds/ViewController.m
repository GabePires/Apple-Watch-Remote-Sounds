//
//  ViewController.m
//  AppleWatch_RemoteSounds
//
//  Created by Pires on 5/20/15.
//  Copyright (c) 2015 PerpetualApps. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "SoundMethods.h"

@interface ViewController (){
    SoundMethods *playSound;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    playSound = [SoundMethods sharedManager];

}


-(IBAction)playQuack:(id)sender{

    [playSound playQuack];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playQuack:) name:@"notificationQuack" object:nil];
    
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
