//
//  ZSSDetailsTableViewController.h
//  ZSSUserDefaults
//
//  Created by Nicholas Hubbard on 10/27/15.
//  Copyright © 2015 Zed Said Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZSSDetailsTableViewController : UITableViewController

/**
 *  User to get defaults for
 */
@property (nonatomic, strong) NSString *user;

/**
 *  Switch 1
 */
@property (weak, nonatomic) IBOutlet UISwitch *option1Switch;

/**
 *  Switch 2
 */
@property (weak, nonatomic) IBOutlet UISwitch *option2Switch;

/**
 *  Swithc 3
 */
@property (weak, nonatomic) IBOutlet UISwitch *option3Switch;

/**
 *  Slider TextLabel
 */
@property (weak, nonatomic) IBOutlet UILabel *sliderTextLabel;

/**
 *  Slider
 */
@property (weak, nonatomic) IBOutlet UISlider *slider;

/**
 *  Toggled Swithc
 *
 *  @param sender UISwitch
 */
- (IBAction)didToggleSwitch:(UISwitch *)toggledSwitch;

/**
 *  Changed Slider
 *
 *  @param sender UISlider
 */
- (IBAction)didChangeSlider:(UISlider *)sender;

@end
