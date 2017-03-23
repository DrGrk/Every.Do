//
//  Todo.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Todo.h"



@implementation Todo

-(void)complete{
    self.completionIndicator = YES;
    [self.delegate strikeThrough];
    return;
}

@end
