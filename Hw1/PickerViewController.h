//
//  PickerViewController.h
//  Hw1
//
//  Created by SnehithNitin on 7/31/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *colorPicker;

@end
