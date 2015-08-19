//
//  BFCollectionViewController.m
//  Button Fun
//
//  Created by Anthony Geranio on 8/18/15.
//  Copyright (c) 2015 ESPN. All rights reserved.
//

#import "BFCollectionViewController.h"

static NSString * const BFCollectionViewControllerCellReuseIdentifier = @"BFCollectionViewCell";

@interface BFCollectionViewController ()

@end

@implementation BFCollectionViewController

#pragma mark - UICollectionView

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return ((collectionView.frame.size.height / 40) + 1 ) * ((collectionView.frame.size.width / 40) + 1);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BFCollectionViewControllerCellReuseIdentifier
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = [self randomColor];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *selectedCell = [collectionView cellForItemAtIndexPath:indexPath];
    selectedCell.backgroundColor = [self randomColor];
}

#pragma mark - Random Color

- (UIColor *)randomColor {
    return [UIColor colorWithRed:arc4random()%256/256.0
                           green:arc4random()%256/256.0
                            blue:arc4random()%256/256.0
                           alpha:1];
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
