//
//  TextFieldCellController.h
//  CustomTableViewCell
//
//  Created by NagaMalleswar on 31/01/14.
//  Copyright (c) 2014 Nagamalleswar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextFieldCellController : NSObject
{
    IBOutlet UITableViewCell *textFieldcell;
}

- (UITableViewCell *)textFieldCellForTableView:(UITableView *)tableView;

@end
