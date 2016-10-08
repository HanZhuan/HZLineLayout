//
//  ViewController.m
//  HZLineLayoutExample
//
//  Created by 韩转 on 16/10/8.
//  Copyright © 2016年 韩转. All rights reserved.
//

#import "ViewController.h"
#import "HZLineLayout.h"
#import "HZPictureCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation ViewController

static NSString  *HZPtotoID = @"photo";

- (void)viewDidLoad
{
    [super viewDidLoad];
    //创建布局
    HZLineLayout *layout = [[HZLineLayout alloc]init];
    layout.itemSize = CGSizeMake(300, 300);
    //创建Collectionview
    CGFloat collectionW = self.view.frame.size.width;
    CGFloat collectionH = self.view.frame.size.height * 0.8;
    
    CGRect frame = CGRectMake(0, 100, collectionW, collectionH);
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:frame collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [self.view addSubview:collectionView];
    //注册
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([HZPictureCell class]) bundle:nil] forCellWithReuseIdentifier:HZPtotoID];
}
#pragma mark -UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 16;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HZPictureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HZPtotoID forIndexPath:indexPath];
    cell.imangeName = [NSString stringWithFormat:@"%zd.png",indexPath.item + 1];
    return cell;
    
}
#pragma mark -UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%zd",indexPath.item);
}
@end
