//
//  DPContentViewController.m
//  Slidey
//
//  Created by Govi on 16/07/2013.
//  Copyright (c) 2013 DP. All rights reserved.
//

#import "DPContentViewController.h"
#import "DPNiftyProgressBar.h"

@interface DPContentViewController ()

@end

@implementation DPContentViewController

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
    // Do any additional setup after loading the view from its nib.
    
    progress1 = [[DPNiftyProgressBar alloc] initWithFrame:CGRectMake(20, 5, 280, 15)];
    progress1.fromProgressColor = [UIColor redColor];
    progress1.toProgressColor = [UIColor blueColor];
    progress1.progressColorType = DPNiftyProgressColorTypeRGBGradient;
    progress1.lineColor = [UIColor lightGrayColor];
    [self.view addSubview:progress1];
    
    progress2 = [[DPNiftyProgressBar alloc] initWithFrame:CGRectMake(20, 25, 280, 15)];
    progress2.thresholdColors = @[[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0],
                                  [UIColor colorWithRed:0.76 green:0.30 blue:0.18 alpha:1.0],
                                  [UIColor colorWithRed:0.42 green:0.44 blue:0.45 alpha:1.0],
                                  [UIColor colorWithRed:0.80 green:0.48 blue:0.06 alpha:1.0]];
    progress2.progressColorType = DPNiftyProgressColorTypeSolid;
    progress2.lineColor = [UIColor lightGrayColor];
    [self.view addSubview:progress2];
    
    progress4 = [[DPNiftyProgressBar alloc] initWithFrame:CGRectMake(20, 45, 280, 15)];
    progress4.thresholdColors = @[[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0],
                                  [UIColor colorWithRed:0.76 green:0.30 blue:0.18 alpha:1.0],
                                  [UIColor colorWithRed:0.42 green:0.44 blue:0.45 alpha:1.0],
                                  [UIColor colorWithRed:0.80 green:0.48 blue:0.06 alpha:1.0]];
    progress4.progressColorType = DPNiftyProgressColorTypeRGBGradient;
    progress4.lineColor = [UIColor lightGrayColor];
    [self.view addSubview:progress4];
    
    progress5 = [[DPNiftyProgressBar alloc] initWithFrame:CGRectMake(20, 65, 280, 15)];
    progress5.thresholdColors = @[[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0],
                                  [UIColor redColor],
                                  [UIColor greenColor],
                                  [UIColor blueColor]];
    progress5.progressColorType = DPNiftyProgressColorTypeRGBGradient;
    progress5.lineColor = [UIColor lightGrayColor];
    [self.view addSubview:progress5];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 100, 280, 20)];
    [self.view addSubview:slider];
    slider.maximumValue = 1.0;
    slider.minimumValue = 0.0;
    [slider addTarget:self action:@selector(updateProgress:) forControlEvents:UIControlEventValueChanged];
}

-(void)updateProgress:(id)sender {
    UISlider *slider = (UISlider *)sender;
    [self updateProgressValue:slider.value];
}

-(void)updateProgressValue:(float)flt {
    progress1.progress = flt;
    progress2.progress = progress1.progress;
    progress4.progress = progress2.progress;
    progress5.progress = progress2.progress;
}

-(void)viewDidAppear:(BOOL)animated {
    [self updateProgressValue:(arc4random() % 10) /10.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

