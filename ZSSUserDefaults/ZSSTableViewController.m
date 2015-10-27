//
//  ZSSTableViewController.m
//  ZSSUserDefaults
//
//  Created by Nicholas Hubbard on 10/27/15.
//  Copyright © 2015 Zed Said Studio. All rights reserved.
//

#import "ZSSTableViewController.h"
#import "ZSSDetailsTableViewController.h"

@interface ZSSTableViewController ()

@end

@implementation ZSSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *user = cell.textLabel.text;
    
    ZSSDetailsTableViewController *details = [self.storyboard instantiateViewControllerWithIdentifier:@"ZSSDetailsTableViewController"];
    details.user = user;
    [self.navigationController pushViewController:details animated:YES];
    
}

@end
