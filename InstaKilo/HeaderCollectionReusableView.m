//
//  HeaderCollectionReusableView.m
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "HeaderCollectionReusableView.h"
#import "PhotoCategory.h"

@interface HeaderCollectionReusableView ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end


@implementation HeaderCollectionReusableView
- (void)configureWithCategory:(PhotoCategory *)category {
    self.label.text = category.name;
}
@end
