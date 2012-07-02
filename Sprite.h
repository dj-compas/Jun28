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
	CGFloat x;
	CGFloat y;
	BOOL dragInProgress;
}

@property (assign, nonatomic) BOOL dragInProgress;

@end
