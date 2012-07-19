//
//  ViewController.m
//  Final Project
//
//  Created by iD Student on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize line;
@synthesize stickman;
@synthesize timer;
@synthesize hole;
- (void)viewDidLoad
{
    timer = [ NSTimer scheduledTimerWithTimeInterval:0.05
                                              target:self
                                            selector:@selector(animate)
                                            userInfo:nil
                                             repeats:YES];

    }

- (void)viewDidUnload
{
    [self setHole:nil];
    [self setLine:nil];
        
    }

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint currentPoint = [touch locationInView:self.view];
    
    if (touch.view != self.view) {
        [touch view].center = currentPoint;
    }
}
-(void)animate{
   
    
        //hole.center = CGPointMake(x, y);
    hole.center = CGPointMake(hole.center.x-1, hole.center.y);
        //x= x-0.5;    
    y=y;
    if(CGRectIntersectsRect(stickman.frame, line.frame))
        {
        
            y = 0;
            //x = x - 40;
            vy *= -100;
        }
    
    //hole.center = CGPointMake(x, y);
    hole.center = CGPointMake(hole.center.x-1, hole.center.y);
    //x= x-0.5;         y=y;
    if(CGRectIntersectsRect(stickman.frame, hole.frame))
    {
        
        y = 160;
        //x = x - 40;
        vy *= 0;
    }
}

- (IBAction)jump:(id)sender {
    [UIImageView animateWithDuration:0.5f animations:^{
        CGRect currentRect=self.stickman.frame;
        currentRect.origin.y-=70;
        
        [self.stickman setFrame:currentRect];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.5f animations:^{
            CGRect currentRect=self.stickman.frame;
            
            currentRect.origin.y+=70;
            
            [self.stickman setFrame:currentRect];
            
        }];
    }];
}


@end
