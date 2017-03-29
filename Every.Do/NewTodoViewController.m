//
//  NewTodoViewController.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "MasterViewController.h"
#import "NewTodoViewController.h"
#import "Todo.h"



@interface NewTodoViewController ()

@property (nonatomic, strong) Todo *todo;

@end

@implementation NewTodoViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)saveToNewTodo:(UIButton *)sender {
    
//SET THE TODO THAT HAS BEEN PASSED FROM MASTERVIEW VC
    self.todo.title = self.setTitleLabel.text;
    self.todo.todoDescription = self.setTodoDescriptionLabel.text;
    self.todo.priorityNumber = [self.setPriorityNumberLabel.text integerValue];
    self.todo.complete = NO;
    
//CALL DELEGATE PROTOCOL AND DISMISS VIEW
    [self.delegate setNewTodo:self.todo];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)backDontSaveNewTodo:(UIButton *)sender {
//REMOVE NEW TODO INSTANCE AND DISMISS VIEW
    [self.delegate dontSaveNewTodo];
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)setNewToDo:(Todo *)todo{
        self.todo = todo;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
