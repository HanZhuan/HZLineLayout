//
//  HZPictureCell.m
//  UicollectionView-自定义布局1
//
//  Created by 韩转 on 16/10/6.
//  Copyright © 2016年 韩转. All rights reserved.
//

#import "HZPictureCell.h"
@interface HZPictureCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
@implementation HZPictureCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // 实现图片边框
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imageView.layer.borderWidth = 10;
}
- (void)setImangeName:(NSString *)imangeName
{
    _imangeName = [imangeName copy];
    self.imageView.image = [UIImage imageNamed:imangeName];
}
@end
