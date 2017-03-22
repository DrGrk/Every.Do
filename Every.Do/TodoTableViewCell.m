//
//  todoTableViewCell.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "TodoTableViewCell.h"
#import "Todo.h"

@implementation TodoTableViewCell

- (void)awakeFromNibWithTodo:(Todo *)todo{
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}



@end
