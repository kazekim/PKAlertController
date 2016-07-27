//
//  KBankAlertCell.m
//  PKAlertController
//
//  Created by Jirawat Harnsiriwatanakit on 7/27/2559 BE.
//  Copyright © 2559 Satoshi Ohki. All rights reserved.
//

#import "KBankAlertCell.h"

@implementation KBankAlertCell

+(KBankAlertCell *) cellForTableView:(UITableView *)tableView
{
    NSString *cellIdentifier = @"KBankAlertCell";
    KBankAlertCell *cell = (KBankAlertCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
        cell = (KBankAlertCell *)[nib objectAtIndex:0];
    }
    
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
