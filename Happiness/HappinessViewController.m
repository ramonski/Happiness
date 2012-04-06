//
//  HappinessViewController.m
//  Happiness
//
//  Created by Bartl Ramon on 02.04.12.
//  Copyright (c) 2012 nexiles GmbH. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController()
@property (nonatomic, weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView  = _faceView;


// redraw whenever our model changes
- (void)setHappiness:(int)happiness {
    _happiness = happiness;
    [self.faceView setNeedsDisplay]; // never ever call drawRect directly! 
}


// add gesture recognizer
- (void) setFaceView:(FaceView *)faceView {
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)]];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}




@end