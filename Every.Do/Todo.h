//
//  Todo.h
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StrikeThrough <NSObject>

-(void)strikeThrough;

@end

@interface Todo : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *todoDescription;
@property (nonatomic) NSInteger priorityNumber;
@property (nonatomic) BOOL completionIndicator;
@property id <StrikeThrough> delegate;

-(void)complete;

@end
