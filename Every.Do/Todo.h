//
//  Todo.h
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *todoDescription;
@property (nonatomic) NSInteger priorityNumber;
@property (nonatomic) BOOL completionIndicator;

@end
