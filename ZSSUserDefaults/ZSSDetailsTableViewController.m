//
//  ZSSDetailsTableViewController.m
//  ZSSUserDefaults
//
//  Created by Nicholas Hubbard on 10/27/15.
//  Copyright © 2015 Zed Said Studio. All rights reserved.
//

#import "ZSSDetailsTableViewController.h"
#import "ZSSUserDefaults.h"

@implementation ZSSDetailsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.user;
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    // Setup Defaults
    ZSSUserDefaults *defaults = [ZSSUserDefaults standardUserDefaults];
    [defaults setUser:@"my_username"];
    [defaults registerDefaults:@{@"option1": @(YES)}];
    
    // Options
    self.option1Switch.on = [defaults boolForKey:@"option1"];
    self.option2Switch.on = [defaults boolForKey:@"option2"];
    self.option3Switch.on = [defaults boolForKey:@"option3"];
    
    // Slider
    self.slider.value = [defaults floatForKey:@"slider"];
    self.sliderTextLabel.text = [NSString stringWithFormat:@"%0.f", self.slider.value];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [[ZSSUserDefaults standardUserDefaults] synchronizeChanges];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Switch

- (IBAction)didToggleSwitch:(UISwitch *)toggledSwitch {
    
    ZSSUserDefaults *defaults = [ZSSUserDefaults standardUserDefaults];
    if ([toggledSwitch isEqual:self.option1Switch]) {
        [defaults setBool:toggledSwitch.on forKey:@"option1"];
    } else if ([toggledSwitch isEqual:self.option2Switch]) {
        [defaults setBool:toggledSwitch.on forKey:@"option2"];
    } else if ([toggledSwitch isEqual:self.option3Switch]) {
        [defaults setBool:toggledSwitch.on forKey:@"option3"];
    }
    
}


#pragma mark - Slider

- (IBAction)didChangeSlider:(UISlider *)sender {
    
    self.sliderTextLabel.text = [NSString stringWithFormat:@"%0.f", sender.value];
    [[ZSSUserDefaults standardUserDefaults] setFloat:sender.value forKey:@"slider"];
    
}

@end
