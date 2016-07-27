//
//  KBankAlertCell.h
//  PKAlertController
//
//  Created by Jirawat Harnsiriwatanakit on 7/27/2559 BE.
//  Copyright © 2559 Satoshi Ohki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBankAlertCell : UITableViewCell

@property (retain,nonatomic) IBOutlet UIImageView *imageViewIcon;
@property (retain,nonatomic) IBOutlet UILabel *labelTitle;

+(KBankAlertCell *) cellForTableView:(UITableView *)tableView;

@end
