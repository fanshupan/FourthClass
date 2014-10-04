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
//    UIButton *FirstButton=[UIButton buttonWithType:UIButtonTypeSystem];
//    [FirstButton setTitle:@"This is the first button" forState:UIControlStateNormal];
//    [FirstButton setFrame:CGRectMake(00, 100, 300, 50)];
//    [FirstButton setBackgroundColor:[UIColor redColor]];
//    [FirstButton addTarget:self action:@selector(pushto) forControlEvents:UIControlEventTouchDragExit];
//    [self.view addSubview:FirstButton];
//    
//    UIButton *SecondButton=[UIButton buttonWithType:UIButtonTypeSystem];
//    [SecondButton setTitle:@"This is the second button" forState:UIControlStateNormal];
//    [SecondButton setFrame:CGRectMake(30, 200, 200, 50)];
//    [SecondButton addTarget:self action:@selector(pushto1) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:SecondButton];
//    
//    UIButton *ThirdButton=[UIButton buttonWithType:UIButtonTypeSystem];
//    [ThirdButton setTitle:@"This is the third button" forState:UIControlStateNormal];
//    [ThirdButton setFrame:CGRectMake(20, 400, 200, 50)];
//    [ThirdButton addTarget:self action:@selector(pushto2) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:ThirdButton];

    

    CGFloat y = 100;
    for (int i =0; i<3; i++) {
        
        UIButton *FirstButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [FirstButton setTitle:@"Button" forState:UIControlStateNormal];
        [FirstButton setFrame:CGRectMake(00, y, 100, 50)];
        FirstButton.titleLabel.font = [UIFont systemFontOfSize:20];
       // [FirstButton setImage:[UIImage imageNamed:@"123"] forState:UIControlStateNormal];
        //[FirstButton setBackgroundColor:[UIColor redColor]];
        FirstButton.tag = i;
        [FirstButton setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
        [FirstButton setImage:[UIImage imageNamed:@"2"] forState:UIControlStateHighlighted];
        [FirstButton setImage:[UIImage imageNamed:@"3"] forState:UIControlStateDisabled];

        
        if (i == 0) {
            FirstButton.enabled = NO;
        }
        
        //FirstButton.selected =NO;

        NSLog(@"fist btn tag %d",FirstButton.tag);
        
        [FirstButton addTarget:self action:@selector(pushto:) forControlEvents:UIControlEventTouchUpInside];

//        if (i ==0) {
//            [FirstButton addTarget:self action:@selector(pushto:) forControlEvents:UIControlEventTouchUpInside];
//
//        }
//        else if (i == 1)
//        {
//            [FirstButton addTarget:self action:@selector(pushto1) forControlEvents:UIControlEventTouchUpInside];
//
//        }
//        
//        else if (i == 2)
//        {
//            [FirstButton addTarget:self action:@selector(pushto2) forControlEvents:UIControlEventTouchUpInside];
//            
//        }
//        
        [self.view addSubview:FirstButton];
        y += 70;
    }
    
}

    // Do any additional setup after loading the view.


-(void)pushto:(id)sender
{
    //sender.titleLabel.font = [UIFont systemFontOfSize:2];
    UIButton *tempBtn = (UIButton *)sender; // iOS 类型强转
    tempBtn.titleLabel.font = [UIFont systemFontOfSize:5];
    NSLog(@"tempBtn tag %d",tempBtn.tag);

    if (tempBtn.tag == 0) {
     //   FirstViewController *first=[[FirstViewController alloc]init];
     //   [self.navigationController pushViewController:first animated:YES];
        
        tempBtn.enabled = NO;

    }
    else if (tempBtn.tag == 1)
    {
        SecondViewController *second=[[SecondViewController alloc]init];
        second.title1 = @"second title";
        second.myint = 1;

        [self.navigationController pushViewController:second animated:YES];
        }
    else if (tempBtn.tag == 2)
    {
        ThirdViewController *third=[[ThirdViewController alloc]init];
        [self.navigationController pushViewController:third animated:YES];
    }


}

-(void)pushto1
{
    SecondViewController *second=[[SecondViewController alloc]init];
    second.title1 = @"second title";

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
