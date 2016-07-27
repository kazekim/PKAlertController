//
//  KBankAlertView.m
//  PKAlertController
//
//  Created by Jirawat Harnsiriwatanakit on 7/27/2559 BE.
//  Copyright © 2559 Satoshi Ohki. All rights reserved.
//

#import "KBankAlertView.h"
#import "KBankAlertCell.h"

#define HEIGHTCELL 60
#define NUMROWS 2

@interface KBankAlertView()


@property (nonatomic) CGSize layoutSize;

@end

@implementation KBankAlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self baseInit];
    }
    return self;
}

+ (id)initFromNibs
{
    UIView *nib = [[[UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil] instantiateWithOwner:self options:nil] objectAtIndex:0];
    return nib;
}

- (void)baseInit
{
    
}

- (void)layoutSubviews {
    
    CGSize viewSize = CGSizeMake(self.bounds.size.width - 50, NUMROWS * HEIGHTCELL + 50);
    
   
    if (!CGSizeEqualToSize(self.layoutSize, viewSize)) {
        self.layoutSize = viewSize;
        [self invalidateIntrinsicContentSize];
    }
    
    [super layoutSubviews];
}

#pragma mark - <PKAlertViewLayoutAdapter>

- (void)applyLayoutWithAlertComponentViews:(NSDictionary *)views {
   
}

- (CGSize)visibleSizeInAlertView {
    CGSize size = self.layoutSize;
    return size;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return NUMROWS;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return HEIGHTCELL;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    KBankAlertCell *cell = [KBankAlertCell cellForTableView:tableView];
    
    switch (indexPath.row) {
        case KBankAlertMenuIndexKMobilePlus:
            [cell.labelTitle setText:@"K-Mobile Banking Plus"];
            [cell.imageViewIcon setImage:[UIImage imageNamed:@"icon_kmobilebankingplus.png"]];
            
            break;
        case KBankAlertMenuIndexQRCode:
            [cell.labelTitle setText:@"QR Code / BarCode"];
            [cell.imageViewIcon setImage:[UIImage imageNamed:@"icon_qrcode.png"]];
            
            break;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case KBankAlertMenuIndexKMobilePlus:
            
            break;
            
        case KBankAlertMenuIndexQRCode:
            
            break;
    }
}

@end
