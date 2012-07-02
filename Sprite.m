//
//  Mega.m
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sprite.h"
#import "Dropping.h"

@implementation Sprite

@synthesize dragInProgress;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor clearColor];
		sprite = [UIImage imageNamed:@"invader.png"];
		imageBounds = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
		
		x=0;
		y=0;
		
		// 
		//[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateSprite) userInfo:nil repeats:YES];
    }
    return self;
}

- (void) updateSprite
{
	x -= 20;
	NSLog(@"update sprite!!");
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	
	//Now call the touchesBegan:withEvent: method of the View.
	[[self nextResponder] touchesBegan: touches withEvent: event];
}


- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
	dragInProgress = YES;
	NSLog(@"drag yes and moving");
	//Call the touchesMoved:withEvent: method of the View.
	[[self nextResponder] touchesMoved: touches withEvent: event];
}


- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	dragInProgress = NO;
	NSLog(@"drag no");
	//Now call the touchesEnded:withEvent: method of the View.
	[[self nextResponder] touchesEnded: touches withEvent: event];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	[sprite drawInRect:imageBounds];
}


@end
