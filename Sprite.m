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
		
		// 
		//[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateSprite) userInfo:nil repeats:YES];
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	startLocation = [[touches anyObject] locationInView:self];
}

- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
	touchPoint = [[touches anyObject] locationInView: self];
	
	CGRect frame = self.frame;
	frame.origin.x += touchPoint.x - startLocation.x;
	frame.origin.y += touchPoint.y - startLocation.y;
	[self setFrame: frame];
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event
{
	// get number of touches
	int taps = [[touches anyObject] tapCount];
	NSLog(@"taps: %d", taps);
	
	if (taps == 1 && !beamActive)
	{
		beamActive = YES;
		int beamWidth = 10;
		int beamHeight = 20;
		CGRect frame = CGRectMake(self.frame.size.width/2 - beamWidth/2, self.frame.size.height, beamWidth, beamHeight);
		beam = [[Dropping alloc] initWithFrame:frame delegate:self];
		[self addSubview:beam];
	}
}

-(void) killBeam
{
	beamActive = NO;
	[beam removeFromSuperview];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	[sprite drawInRect:imageBounds];
}


@end
