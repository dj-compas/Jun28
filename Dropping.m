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

- (void)drawRect:(CGRect)dirtyRect
{
    // Drawing code here.
	SEL sel = @selector(parentFunction);
	//[parent parentFunction];
	[parent performSelector:sel withObject:nil afterDelay:1];
}

@end
