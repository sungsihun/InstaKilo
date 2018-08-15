//
//  DataManager.m
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "DataManager.h"
#import "Photo.h"
#import "PhotoCategory.h"

@interface DataManager ()
@property (nonatomic)NSArray<PhotoCategory *>*categories;
@property (nonatomic)NSArray<PhotoCategory *>*objectCategories;
@property (nonatomic)NSArray<PhotoCategory *>*locationCategories;

@end

@implementation DataManager

//- (instancetype)init {
//    if (self = [super init]){
//        [self setupCategories];
//    }
//    return self;
//}

- (instancetype)initWithSelectedSegmentIndex:(NSInteger)index {
    if (self = [super init]){
        [self setupCategories:(NSInteger)index];
    }
    return self;
}

- (void)setupCategories:(NSUInteger)index {
    if (index == 0) {
        PhotoCategory *food = [[PhotoCategory alloc] initWithName:@"Food"];
        PhotoCategory *fruit = [[PhotoCategory alloc] initWithName:@"Fruit"];
        self.categories = @[food, fruit];
    } else {
        PhotoCategory *dessert = [[PhotoCategory alloc] initWithName:@"Dessert"];
        self.categories = @[dessert];
    }
}

- (NSInteger)numberOfSections {
    return self.categories.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    PhotoCategory *category = self.categories[section];
    return category.photos.count;
}

- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath {
    // get the category at the section
    PhotoCategory *category = self.categories[indexPath.section];
    // get the photo at the row/item of that section
    Photo *photo = category.photos[indexPath.item];
    return photo;
}

- (PhotoCategory *)photoCategoryAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    return self.categories[section];
}


@end
