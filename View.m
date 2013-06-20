//
//  View.m
//  Jun20
//
//  Created by Sir Andrew on 6/20/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	UIFont *font = [UIFont systemFontOfSize: 23.0];
//	NSString *string = @"Hello, World!";
	NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
                  //@"http://finance.yahoo.com/d/quotes.csv?s=XOM+EK+JNJ+MSFT&f=snd1t1l1ohgvwdyr"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
	CGPoint point = CGPointMake(50.0, 50.0);
	[string drawAtPoint: point withFont: font];
    

	//}
}

@end
