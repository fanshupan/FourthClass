//
//  SecondViewController.m
//  FourthClass
//
//  Created by Apple on 14-10-4.
//  Copyright (c) 2014年 Practice. All rights reserved.
//

#import "SecondViewController.h"

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *mylabel=[[UILabel alloc]initWithFrame:CGRectMake(00, 50, 200, 200)];
    mylabel.textColor=[UIColor redColor];
    mylabel.backgroundColor = [UIColor grayColor];
    mylabel.text=@"This is thr";
    mylabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:mylabel];
    
    
    self.navigationItem.title = self.title1;
    NSLog(@"my int %d",self.myint);
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
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
