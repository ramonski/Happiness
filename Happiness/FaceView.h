//
//  FaceView.h
//  Happiness
//
//  Created by Bartl Ramon on 02.04.12.
//  Copyright (c) 2012 nexiles GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void) pinch:(UIPinchGestureRecognizer *)gesture;

@end
