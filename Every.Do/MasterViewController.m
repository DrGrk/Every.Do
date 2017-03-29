//
//  MasterViewController.m
//  Every.Do
//
//  Created by David Guichon on 2017-03-21.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "NewTodoViewController.h"
#import "Todo.h"
#import "TodoTableViewCell.h"

@interface MasterViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray <Todo *> *arrayOfTodos;

@end


@implementation MasterViewController

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    animated = YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)setNewTodo:(Todo *)todo{
    [self.arrayOfTodos insertObject:todo atIndex:0];
    [self.tableView reloadData];
}

-(void)dontSaveNewTodo{
    [self.arrayOfTodos removeObjectAtIndex:0];
}

- (void)insertNewObject:(id)sender {
    if (!self.arrayOfTodos) {
        self.arrayOfTodos = [[NSMutableArray alloc] init];
    }
    [self performSegueWithIdentifier:@"insertNewObject" sender:sender];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Todo *todoSelected = self.arrayOfTodos[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        [controller setDetailItem:todoSelected];
    }
    if ([[segue identifier] isEqualToString:@"insertNewObject"]) {
//CREATE INSTANCE OF NEWTODO VC && CREATE INSTANCE OF TODO && SEND INSTANCE TO NEWTODO VC
        NewTodoViewController *newToDoVC = (NewTodoViewController *)[segue destinationViewController];
        newToDoVC.delegate = self;
        Todo *todo = [[Todo alloc] init];
        [newToDoVC setNewToDo:todo];
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayOfTodos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TodoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.todo = self.arrayOfTodos[indexPath.row];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.arrayOfTodos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
