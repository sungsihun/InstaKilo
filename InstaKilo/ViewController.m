//
//  ViewController.m
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "DataManager.h"

@interface ViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) DataManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"InstaKilo";
    self.manager = [[DataManager alloc] init];
}



#pragma mark - Data Source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.photo = [self.manager photoAtIndexPath:indexPath];
    return cell;
}






@end
