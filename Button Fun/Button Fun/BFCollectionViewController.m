//
//  BFCollectionViewController.m
//  Button Fun
//
//  Created by Anthony Geranio on 8/18/15.
//  Copyright (c) 2015 ESPN. All rights reserved.
//

#import "BFCollectionViewController.h"
#import "UIColor+BFRandomColor.h"

static NSUInteger BFCollectionViewControllerTimerLength = 10;
static NSString * const BFCollectionViewControllerCellReuseIdentifier = @"BFCollectionViewCell";

@interface BFCollectionViewController ()

@end

@implementation BFCollectionViewController

#pragma mark - UICollectionView Setup

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return ((collectionView.frame.size.height / 40) + 1 ) * ((collectionView.frame.size.width / 40) + 1);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BFCollectionViewControllerCellReuseIdentifier
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = [UIColor generateRandomColor];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *selectedCell = [collectionView cellForItemAtIndexPath:indexPath];
    selectedCell.backgroundColor = [UIColor generateRandomColor];
}

#pragma mark - Shuffle All Color Views

- (void)shuffleAllColorViews {
    [self.collectionView reloadData];
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:BFCollectionViewControllerTimerLength
                                     target:self
                                   selector:@selector(shuffleAllColorViews)
                                   userInfo:nil
                                    repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
