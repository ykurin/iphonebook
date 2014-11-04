//
//  AddViewController.m
//  iphonebook
//
//  Created by Admin on 31.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "AddViewController.h"
#import "ContactTableViewController.h"

@interface AddViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameText;
@property (strong, nonatomic) IBOutlet UITextField *phoneText;

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    if (self.nameText.text.length && self.phoneText.text.length) {
        UITabBarController* tbvc =  (UITabBarController*)self.presentingViewController;
        UINavigationController* navc = (UINavigationController*)tbvc.viewControllers[0];
        ContactTableViewController* tvc = (ContactTableViewController*)navc.topViewController;
        
        [tvc addName:self.nameText.text];
        [tvc addPhone:self.phoneText.text];
        [tvc.tableView reloadData];
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
