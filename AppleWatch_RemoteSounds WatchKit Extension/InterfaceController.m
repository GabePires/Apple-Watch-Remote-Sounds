//
//  InterfaceController.m
//  AppleWatch_RemoteSounds WatchKit Extension
//
//  Created by Pires on 5/20/15.
//  Copyright (c) 2015 PerpetualApps. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

-(IBAction)remoteQuack:(id)sender{
    //Send to parent application
    NSString *fromWatch = @"Hello.";
    NSString *fromWatch2 = @"How are you iPhone?";
    
    NSDictionary *applicationData = [NSDictionary dictionaryWithObjects:@[fromWatch,fromWatch2] forKeys:@[@"fromWatch", @"fromWatch2"]];
    
    //Handle reciever in app delegate of parent app
    [WKInterfaceController openParentApplication:applicationData reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"%@",replyInfo);
    }];

}
@end



