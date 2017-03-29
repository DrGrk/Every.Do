//
//  todoTableViewCell.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "TodoTableViewCell.h"
#import "Todo.h"

@interface TodoTableViewCell()
@property (nonatomic) UISwipeGestureRecognizer *swipe;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *todoDescriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *priorityNumberLabel;

@end

@implementation TodoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // add gesture
    self.swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
    [self.swipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [self addGestureRecognizer:self.swipe];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}


- (void)handleGesture:(UISwipeGestureRecognizer *)sender {
    
    // set the completed state on the model
    self.todo.complete = !self.todo.complete;
    // update the cell
    [self updateView];
}

- (void)updateView {
    NSNumber *completed = @(self.todo.complete);
    NSDictionary* strikeThrough = @{NSStrikethroughStyleAttributeName: completed};
    NSAttributedString* attributedTitle = [[NSAttributedString alloc] initWithString:self.todo.title attributes:strikeThrough];
    NSAttributedString* attributedDesc = [[NSAttributedString alloc] initWithString:self.todo.todoDescription attributes:strikeThrough];
    
    self.titleLabel.attributedText = attributedTitle;
    self.todoDescriptionLabel.attributedText = attributedDesc;
    self.priorityNumberLabel.text = @(self.todo.priorityNumber).stringValue;
}


- (void)setTodo:(Todo *)todo {
    _todo = todo;
    
    [self updateView];
}


@end
