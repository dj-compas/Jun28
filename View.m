//
//  View.m
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "Sprite.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		//self.backgroundColor = [UIColor blackColor];
        
        // add space image
        space = [UIImage imageNamed:@"space.jpg"];
        
		CGRect b = self.bounds;
		CGFloat w = b.size.width;
		CGFloat h = b.size.height;
		CGRect spriteFrame = CGRectMake(w/2-100/2, h/2-80/2, 100, 80);
		
		// init sprite
		sprite = [[Sprite alloc] initWithFrame:spriteFrame];
		[self addSubview:sprite];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	startLocation = [[touches anyObject] locationInView:sprite];
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (sprite.dragInProgress)
	{
		touchPoint = [[touches anyObject] locationInView: sprite];
		
		CGRect frame = sprite.frame;
		frame.origin.x += touchPoint.x - startLocation.x;
		frame.origin.y += touchPoint.y - startLocation.y;
		[sprite setFrame: frame];
	}
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect f = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    [space drawInRect:f];
}


@end
