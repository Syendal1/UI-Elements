//
//  CollectionCodeViewController.h
//  Hw1
//
//  Created by SnehithNitin on 8/1/16.
//  Copyright © 2016 Snehith. All rights reserved.
//



#import <UIKit/UIKit.h>
@interface CollectionCodeViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    UICollectionView *collectionView;
    
}

@end