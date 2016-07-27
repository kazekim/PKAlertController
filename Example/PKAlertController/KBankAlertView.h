//
//  KBankAlertView.h
//  PKAlertController
//
//  Created by Jirawat Harnsiriwatanakit on 7/27/2559 BE.
//  Copyright © 2559 Satoshi Ohki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <PKAlertUtility.h>

typedef NS_ENUM(NSInteger, KBankAlertMenuIndex) {
    KBankAlertMenuIndexKMobilePlus,
    KBankAlertMenuIndexQRCode
};

@interface KBankAlertView : UIView<UITableViewDelegate,UITableViewDataSource,PKAlertViewLayoutAdapter>

@property (retain,nonatomic) IBOutlet UITableView *tableView;

+ (id)initFromNibs;

@end
