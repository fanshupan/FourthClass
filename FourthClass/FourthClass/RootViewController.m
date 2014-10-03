//
//  RootViewController.m
//  FourthClass
//
//  Created by Apple on 14-10-4.
//  Copyright (c) 2014年 Practice. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
    UIButton *FirstButton=[UIButton buttonWithType:UIButtonTypeSystem];
    [FirstButton setTitle:@"This is the first button" forState:UIControlStateNormal];
    [FirstButton setFrame:CGRectMake(00, 200, 300, 200)];
    [FirstButton addTarget:self action:@selector(pushto) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:FirstButton];
    
    UIButton *SecondButton=[UIButton buttonWithType:UIButtonTypeSystem];
    [SecondButton setTitle:@"This is the second button" forState:UIControlStateNormal];
    [SecondButton setFrame:CGRectMake(30, 300, 200, 300)];
    [SecondButton addTarget:self action:@selector(pushto1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:SecondButton];
    
    UIButton *ThirdButton=[UIButton buttonWithType:UIButtonTypeSystem];
    [ThirdButton setTitle:@"This is the third button" forState:UIControlStateNormal];
    [ThirdButton setFrame:CGRectMake(20, 200, 200, 300)];
    [ThirdButton addTarget:self action:@selector(pushto) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:ThirdButton];
}

    // Do any additional setup after loading the view.


-(void)pushto
    {
        FirstViewController *first=[[FirstViewController alloc]init];
        [self.navigationController pushViewController:first animated:YES];

    }

-(void)pushto1
{
    SecondViewController *second=[[SecondViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    
}
-(void)pushto2
{

    ThirdViewController *third=[[ThirdViewController alloc]init];
    [self.navigationController pushViewController:third animated:YES];
    
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
