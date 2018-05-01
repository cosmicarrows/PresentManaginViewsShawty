//
//  SecondViewController.m
//  PresentManaginViewsShawty
//
//  Created by Laurence Wingo on 11/6/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"Second Controller";
}

-(void) goBack{

    [self.navigationController popViewControllerAnimated:YES];
}

-(void) viewDidAppear:(BOOL)paramAnimated{
    [super viewDidAppear:paramAnimated];
    [self performSelector:@selector(goBack) withObject:nil afterDelay:5.0F];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
