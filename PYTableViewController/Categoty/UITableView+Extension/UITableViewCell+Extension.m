//
//  UITableViewCell+Extension.m
//  youzhu
//
//  Created by 谢培艺 on 16/1/20.
//  Copyright © 2016年 iphone5solo. All rights reserved.
//

#import "UITableViewCell+Extension.h"

static UITableViewCellBlock _operation;

@implementation UITableViewCell (Extension)



- (UITableViewCellBlock)operation
{
    return objc_getAssociatedObject(self, &_operation);
}

- (void)setOperation:(UITableViewCellBlock)operation
{
    objc_setAssociatedObject(self, &_operation, operation, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

+ (instancetype)cellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier didSelectedCell:(void(^)(UITableViewCell *cell))didSelectedCell
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:reuseIdentifier];
    // 设置选中操作
    [cell setOperation:didSelectedCell];
    return cell;
    
}


@end
