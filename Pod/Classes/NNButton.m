//
//  NNButton.m
//  Pods
//
//  Created by noughts on 2015/02/24.
//
//

#import "NNButton.h"
#import <Colours/Colours.h>

@implementation NNButton{
	UIColor* _originalBackgroundColor;
}

-(void)awakeFromNib{
	[super awakeFromNib];
	
	self.layer.cornerRadius = 3;
	_originalBackgroundColor = self.backgroundColor;
}



- (void)setHighlighted:(BOOL)highlighted {
	[super setHighlighted:highlighted];
	
	if (highlighted) {
		self.backgroundColor = [_originalBackgroundColor darken:0.2];
	} else {
		self.backgroundColor = _originalBackgroundColor;
	}
}



@end
