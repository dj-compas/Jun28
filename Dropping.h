//
//  Dropping.h
//  Jun28
//
//  Created by Michael Compas on 6/28/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dropping : UIView
{
	id parent;
}


- (id)initWithFrame:(CGRect)frame delegate:(id) viewDelegate;

-(void) moveDown;

@end
