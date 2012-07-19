//
//  ViewController.h
//  Final Project
//
//  Created by iD Student on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
     int x, y, vy, v;

     
}

@property (weak, nonatomic) IBOutlet UIImageView *stickman;
- (IBAction)jump:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *line;
@property (strong) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UIImageView *hole;






@end
