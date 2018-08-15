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
#import "HeaderCollectionReusableView.h"

@interface ViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) DataManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"InstaKilo";
//    self.manager = [[DataManager alloc] init];
    self.manager = [[DataManager alloc] initWithSelectedSegmentIndex:0];
}

- (void)viewWillLayoutSubviews {
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    layout.sectionHeadersPinToVisibleBounds = YES;
    
    CGSize itemSize = CGSizeMake(self.collectionView.bounds.size.width/3, self.collectionView.bounds.size.width/3);
 
    layout.itemSize = itemSize;
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

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
    PhotoCategory *category = [self.manager photoCategoryAtIndexPath:indexPath];
    [header configureWithCategory:category];
    return header;
}


- (IBAction)segmentedControl:(id)sender {
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:   // subject
        {
            self.manager = [[DataManager alloc] initWithSelectedSegmentIndex:0];
            [self.collectionView reloadData];
            break;
        }
        case 1:   // location
        {
            self.manager = [[DataManager alloc] initWithSelectedSegmentIndex:1];
            [self.collectionView reloadData];
            break;
        }
    }
    
}




@end
