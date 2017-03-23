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

-(void)strikeThrough{
    NSDictionary* attributes = @{
                                 NSStrikethroughStyleAttributeName: [NSNumber numberWithInt:NSUnderlineStyleSingle]
                                 };
    
    NSAttributedString* titleAttrText = [[NSAttributedString alloc] initWithString:self.titleLabel.text attributes:attributes];
    self.titleLabel.attributedText = titleAttrText;
    
    NSAttributedString* descriptionAttrText = [[NSAttributedString alloc] initWithString:self.todoDescriptionLabel.text attributes:attributes];
    self.todoDescriptionLabel.attributedText = descriptionAttrText;
}



@end
