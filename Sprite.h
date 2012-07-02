//
//  Mega.h
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dropping;

@interface Sprite : UIView
{
	UIImage *sprite;
	CGRect imageBounds;
	CGPoint startLocation;
	CGPoint touchPoint;
	BOOL beamActive;
	Dropping *beam;
}

@property (assign, nonatomic) BOOL dragInProgress;

-(void) killBeam;

@end
