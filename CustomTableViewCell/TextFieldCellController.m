//
//  TextFieldCellController.m
//  CustomTableViewCell
//
//  Created by NagaMalleswar on 31/01/14.
//  Copyright (c) 2014 Nagamalleswar. All rights reserved.
//

#import "TextFieldCellController.h"

#define CELL_IDENTIFIER @"TextFieldCell"

@implementation TextFieldCellController

- (UITableViewCell *)textFieldCellForTableView:(UITableView *)tableView
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    
    if( !cell )
    {
        [[NSBundle mainBundle] loadNibNamed:@"TextFieldCell" owner:self options:nil];
        cell = textFieldcell;
    }
    
    return cell;
}

@end
