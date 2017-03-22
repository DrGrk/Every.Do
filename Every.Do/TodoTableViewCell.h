//
//  todoTableViewCell.h
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Todo;

@interface TodoTableViewCell : UITableViewCell

@property (strong, nonatomic) Todo *todo;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *todoDescriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *priorityNumberLabel;


@end
