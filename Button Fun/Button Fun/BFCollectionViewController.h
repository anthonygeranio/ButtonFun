//
//  BFCollectionViewController.h
//  Button Fun
//
//  Created by Anthony Geranio on 8/18/15.
//  Copyright (c) 2015 ESPN. All rights reserved.
//

@import UIKit;

@interface BFCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

/**
 *  Generates a random color to use in our color views.
 *
 * @return randomColor     A random color.
 *
 */
- (UIColor *)randomColor;

@end

