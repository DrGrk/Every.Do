//
//  DetailViewController.h
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Todo;

@interface DetailViewController : UIViewController 

@property (strong, nonatomic) Todo *todoSelected;

@property (strong, nonatomic) IBOutlet UILabel *detailTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailTodoDescriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *priorityNumberLabel;

-(void)setDetailItem:(Todo *)todoSelected;

@end

