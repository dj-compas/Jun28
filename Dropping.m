//
//  Dropping.m
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "Dropping.h"
#import "Sprite.h"

@implementation Dropping

- (id)initWithFrame:(CGRect)frame delegate:(id) viewDelegate
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        self.backgroundColor = [UIColor redColor];
		
		parent = viewDelegate;
		
		
    }
    
    return self;
}

-(void) moveDown
{
	[Dropping animateWithDuration:.4
						  delay:0
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 CGFloat ty = 480;
						 self.transform = CGAffineTransformMakeTranslation(0, ty);
					 }
					 completion:^(BOOL finished){
						 if (finished)
						 {
							 [parent killBeam];
						 }
					 }
	 ];
}

- (void)drawRect:(CGRect)dirtyRect
{
    // Drawing code here.
	[self moveDown];
}

@end
