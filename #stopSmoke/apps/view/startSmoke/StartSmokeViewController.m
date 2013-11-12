//
//  StartSmokeViewController.m
//  #stopSmoke
//
//  Created by Flash on 11/12/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "StartSmokeViewController.h"

@interface StartSmokeViewController ()

@end

@implementation StartSmokeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.view.backgroundColor =[UIColor colorWithRed:0.18 green:0.8 blue:0.443 alpha:1];
		im_smoke  = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		im_smoke.frame = CGRectMake(100, 100, 100,100);
		[im_smoke setBackgroundColor:[UIColor redColor]];
		[im_smoke setTitle:@"I'm Smoking Now!" forState:UIControlStateNormal];
		[im_smoke setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[im_smoke addTarget:self action:@selector(smooking) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:im_smoke];
		
    }
    return self;
}
-(void)smooking{
	im_smoke.enabled  = false;
	PFObject *testObject = [PFObject objectWithClassName:@"StartSmooking"];
	[testObject setObject:@"Arie" forKey:@"User"];
	[testObject save];
	[self performSelector:@selector(activateButton) withObject:Nil afterDelay:438];
}
-(void)activateButton{
	im_smoke.enabled = YES;
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

@end
