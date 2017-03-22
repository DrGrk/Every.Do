//
//  NewTodoViewController.h
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"
@class Todo;

@protocol SetNewTodo <NSObject>

-(void)setNewTodo:(Todo *)todo;

-(void)dontSaveNewTodo;

@end

@interface NewTodoViewController : UIViewController 

//COULD THIS BE SET TO PRIVATE??

@property (strong, nonatomic) IBOutlet UITextView *setTitleLabel;
@property (strong, nonatomic) IBOutlet UITextView *setPriorityNumberLabel;
@property (strong, nonatomic) IBOutlet UITextView *setTodoDescriptionLabel;

@property (nonatomic, strong) id <SetNewTodo> delegate;


- (void)setNewToDo:(Todo *)arrayOfTodos;


@end
