//
//  ViewController.m
//  PresentManaginViewsShawty
//
//  Created by Laurence Wingo on 11/6/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"First Controller";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(performAdd:)];
    
    
    /*Create an Image View to replace the Title View*/
    UIImageView *imageView =
    [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 40.0f)];
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    /*Load an image. Be careful, this image will be cached */
    UIImage *image = [UIImage imageNamed:@"babybig.png"];
    
    /*set the image of the Image View */
    [imageView setImage:image];
    
    /*Set the Title View */
    self.navigationItem.titleView = imageView;
    
    
    
}

-(void) performAdd:(id)paramSender{
    NSLog(@"Action method got called");
}




-(void) pushSecondController{
    SecondViewController *secondController = [[SecondViewController alloc] initWithNibName:nil bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:YES];
}


-(void) viewDidAppear:(BOOL)paramAnimated{
    [super viewDidAppear:paramAnimated];
    [self performSelector:@selector(pushSecondController) withObject:nil afterDelay:5.0F];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
