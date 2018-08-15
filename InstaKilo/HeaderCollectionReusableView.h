//
//  HeaderCollectionReusableView.h
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoCategory;

@interface HeaderCollectionReusableView : UICollectionReusableView

- (void)configureWithCategory:(PhotoCategory *)category;


@end
