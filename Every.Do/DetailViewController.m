//
//  DetailViewController.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "DetailViewController.h"
#import "Todo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(Todo *)todoSelected {
    if (_todoSelected != todoSelected) {
        _todoSelected = todoSelected;
            
        // Update the view.
        [self configureView];
    }
}


- (void)configureView {
// Update the user interface for the detail item.
    if (self.todoSelected) {
        self.detailTitleLabel.text = self.todoSelected.title;
        self.detailTodoDescriptionLabel.text = self.todoSelected.todoDescription;
        self.priorityNumberLabel.text = [NSString stringWithFormat:@"%ld", (long)self.todoSelected.priorityNumber];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
