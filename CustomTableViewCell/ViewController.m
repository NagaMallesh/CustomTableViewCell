//
//  ViewController.m
//  CustomTableViewCell
//
//  Created by NagaMalleswar on 31/01/14.
//  Copyright (c) 2014 Nagamalleswar. All rights reserved.
//

#import "ViewController.h"
#import "TextFieldCellController.h"

@interface ViewController ()

@property(nonatomic,retain) NSMutableArray *tableViewCellCtrls;

@end

@implementation ViewController

@synthesize tableViewCellCtrls;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Adding Text Fields";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addUITextFieldCell)];
    
    self.tableViewCellCtrls = [[NSMutableArray alloc] init];
}

#pragma mark -
#pragma mark UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableViewCellCtrls.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TextFieldCellController *textFieldCellCtrl = [tableViewCellCtrls objectAtIndex:indexPath.row];
    UITableViewCell *cell = [textFieldCellCtrl textFieldCellForTableView:tableView];
    
    return cell;
}

#pragma mark -
#pragma mark Methods

- (void)addUITextFieldCell
{
    TextFieldCellController *textFieldCellCtrl = [[TextFieldCellController alloc] init];
    [tableViewCellCtrls addObject:textFieldCellCtrl];
    
    [textFieldTableView reloadData];
}

@end
